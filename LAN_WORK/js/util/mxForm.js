/**
 * Copyright (c) 2006-2015, JGraph Ltd
 * Copyright (c) 2006-2015, Gaudenz Alder
 */
/**
 * Class: mxForm
 * 
 * A simple class for creating HTML forms.
 * 
 * Constructor: mxForm
 * 
 * Creates a HTML table using the specified classname.
 */
function mxForm(className, owner)
{
	this.table = document.createElement('table');
	this.table.className = className;
	this.body = document.createElement('tbody');
	
	this.table.appendChild(this.body);

	this.window = owner;
};

mxForm.prototype.window = null;
mxForm.prototype.Result = null;

/**
 * Variable: table
 * 
 * Holds the DOM node that represents the table.
 */
mxForm.prototype.table = null;

/**
 * Variable: body
 * 
 * Holds the DOM node that represents the tbody (table body). New rows
 * can be added to this object using DOM API.
 */
mxForm.prototype.body = false;

/**
 * Function: getTable
 * 
 * Returns the table that contains this form.
 */
mxForm.prototype.getTable = function()
{
	return this.table;
};

/**
 * Function: addButtons
 * 
 * Helper method to add an OK and Cancel button using the respective
 * functions.
 */
mxForm.prototype.addButtons = function(okFunct, cancelFunct)
{
	var tr = document.createElement('tr');
	var td = document.createElement('td');
	tr.appendChild(td);
	td = document.createElement('td');

	// Adds the ok button
	var button = document.createElement('button');
	mxUtils.write(button, mxResources.get('ok') || 'OK');
	td.appendChild(button);

	mxEvent.addListener(button, 'click', function()
	{
		okFunct();
	});
	
	// Adds the cancel button
	button = document.createElement('button');
	mxUtils.write(button, mxResources.get('cancel') || 'Cancel');
	td.appendChild(button);
	
	mxEvent.addListener(button, 'click', function()
	{
		cancelFunct();
	});
	
	tr.appendChild(td);
	this.body.appendChild(tr);
};

/**
 * Function: addText
 * 
 * Adds an input for the given name, type and value and returns it.
 */
mxForm.prototype.addText = function(name, value, type, childFormAttrs, ParentForm)
{
    var input = document.createElement('input');
	
	input.setAttribute('type', type || 'text');
	if (childFormAttrs)
	{
	    input.value = childFormAttrs.DisplayValue;
	    var inputForValue = document.createElement('input');
	    inputForValue.setAttribute('type', 'hidden');
        inputForValue.value = value;
        if (type == 'button')
        {
            if (childFormAttrs.InfoLink == "")
                input.setAttribute('onclick', childFormAttrs.OnClick);
            else
                mxEvent.addListener(input, 'click', function () {
                    ChildForm(name, inputForValue, childFormAttrs.InfoLink, childFormAttrs.SaveLink, childFormAttrs.Height, childFormAttrs.Width, childFormAttrs.ActionAfterExec, ParentForm);
                });
        }
	    this.addField(name, input);
	    return this.addField('', inputForValue);
	}
	input.value = value;
	return this.addField(name, input);
};

function CreateProperties(form, attrs, url, ActionAfterExec, ClassName, callBackFunction, parentForm) {
    var texts = [];
    for (var i = 0; i < attrs.length; i++) {
        var fControl = texts[i] = attrs[i].ControlType == "textarea" ?
            form.addTextarea('', attrs[i].Value, attrs[i].Height / 10, attrs[i].Width / 5) :
            form.addText(attrs[i].Name, attrs[i].Value, attrs[i].ControlType, attrs[i].ChildFormAttrs, form);
        if (attrs[i].ReadOnly)
            fControl.setAttribute('readonly', 'true');
    }

    // Adds an OK and Cancel button to the dialog
    // contents and implements the respective
    // actions below

    // Defines the function to be executed when the
    // OK button is pressed in the dialog
    var okFunction = mxUtils.bind(this, function () {
        // Hides the dialog
        form.window.setVisible(false);
        var sendResult = false;
        var results = [];
        var j = 0;
        for (var i = 0; i < attrs.length; i++) {
            var iValue = attrs[i].Value;
            if (iValue == null)
                iValue = "";
            if (iValue != texts[i].value || attrs[i].WriteUnchanged)
            {
                saveText = texts[i].value.replace(new RegExp("<", 'g'), "&lt;").replace(new RegExp(">", 'g'), "&gt;");
                results[j++] = { Name: attrs[i].Name, Value: saveText};
                if (form.Result) {
                    form.Result.value = texts[i].value;
                }
                sendResult = true;
            }
        }
        if (sendResult) {
            if (url != "") {
                var xhr = new XMLHttpRequest();
                var body = "json_params=" + encodeURIComponent(JSON.stringify(results));
                if (ClassName)
                    body += "&class_name=" + ClassName;
                xhr.open('POST', url, false);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send(body);
                if (ActionAfterExec == "alert") {
                    if (xhr.responseText != "") {
                        alert(xhr.responseText);
                    }
                }
                else if (ActionAfterExec == "close") {
                    if (callBackFunction) {
                        callBackFunction(parentForm);
                    }
                }
                else if (ActionAfterExec == "exec") {
                    var actionObject = JSON.parse(xhr.responseText);
                    if (actionObject && actionObject.action && actionObject.arg_name && actionObject.arg) {
                        var f = new Function(actionObject.arg_name, actionObject.action);
                        var R = f(actionObject.arg); 
                        console.log(R);
                    }
                    else if (actionObject && actionObject.action)
                        eval(actionObject.action);
                }
                else {
                    console.log('ActionAfterExec = ' + ActionAfterExec);
                }
            }
        }

    });
    // Defines the function to be executed when the
    // Cancel button is pressed in the dialog
    var cancelFunction = mxUtils.bind(this, function () {
        // Hides the dialog
        form.window.setVisible(false);
    });

    form.addButtons(okFunction, cancelFunction);
    form.okClick = okFunction;
    return form.table;
};

function CloseForm(form) {
    if (form.okClick)
        form.okClick();
}

function ChildForm(Name, Input, UrlIn, UrlOut, Height, Width, ActionAfterExec, ParentForm) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', UrlIn, false);
    xhr.send();
    var formAttrs = JSON.parse(xhr.responseText);
    
    var form = new mxForm(Name);
    form.Result = Input;
    var Props = CreateProperties(form, formAttrs, UrlOut, ActionAfterExec, "", this.CloseForm, ParentForm);
    var wnd = new mxWindow(Name,
        Props, 100, 100, Width || 250, Height || 400, false, true);
    form.window = wnd;
    wnd.setVisible(true);
}
/**
 * Function: addCheckbox
 * 
 * Adds a checkbox for the given name and value and returns the textfield.
 */
mxForm.prototype.addCheckbox = function(name, value)
{
	var input = document.createElement('input');
	
	input.setAttribute('type', 'checkbox');
	this.addField(name, input);

	// IE can only change the checked value if the input is inside the DOM
	if (value)
	{
		input.checked = true;
	}

	return input;
};

/**
 * Function: addTextarea
 * 
 * Adds a textarea for the given name and value and returns the textarea.
 */
mxForm.prototype.addTextarea = function(name, value, rows, cols)
{
	var input = document.createElement('textarea');
	
	if (mxClient.IS_NS)
	{
		rows--;
	}
	
	input.setAttribute('cols', cols);
	input.setAttribute('rows', rows || 2);
	input.value = value;
	
	return this.addField(name, input);
};

/**
 * Function: addCombo
 * 
 * Adds a combo for the given name and returns the combo.
 */
mxForm.prototype.addCombo = function(name, isMultiSelect, size)
{
	var select = document.createElement('select');
	
	if (size != null)
	{
		select.setAttribute('size', size);
	}
	
	if (isMultiSelect)
	{
		select.setAttribute('multiple', 'true');
	}
	
	return this.addField(name, select);
};

/**
 * Function: addOption
 * 
 * Adds an option for the given label to the specified combo.
 */
mxForm.prototype.addOption = function(combo, label, value, isSelected)
{
	var option = document.createElement('option');
	
	mxUtils.writeln(option, label);
	option.setAttribute('value', value);
	
	if (isSelected)
	{
		option.setAttribute('selected', isSelected);
	}
	
	combo.appendChild(option);
};

/**
 * Function: addField
 * 
 * Adds a new row with the name and the input field in two columns and
 * returns the given input.
 */
mxForm.prototype.addField = function(name, input)
{
	var tr = document.createElement('tr');
	var td = document.createElement('td');
	mxUtils.write(td, name);
	tr.appendChild(td);
	
	td = document.createElement('td');
	td.appendChild(input);
	tr.appendChild(td);
	this.body.appendChild(tr);
	
	return input;
};

/**
 * Function: addTexButton
 * 
 * Helper method to add button for edit Textarea
 */
mxForm.prototype.addTexButton = function (textContainer) {
    console.log('addTexButton');

    //var tr = document.createElement('tr');
    //var td = document.createElement('td');
    //tr.appendChild(td);
    //td = document.createElement('td');

    //// Adds the ok button
    //var button = document.createElement('button');
    //mxUtils.write(button, '...');
    //td.appendChild(button);

    //mxEvent.addListener(button, 'click', function () {
    //    alert('Edit text');
    //});

    //tr.appendChild(td);
    //this.body.appendChild(tr);
};
