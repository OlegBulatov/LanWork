var theme = 'light';
var loadedClasses = new Object();

(function ($) {
$.fn.clientObj = function (className) {
    var cObj;
    var SortState = new Object();
    var ColumnModels = new Object();
    var ColumnGroups = new Object();

    var editedObject = new Object();
    var gridName = '#grid';

    function renderToolBar(statusbar) {
        var getColumnsDataFromArray = function (columnsData) {
            var data = [];
            columnsData.forEach(function (item) {
                data.push({ id: item.id, parentid: item.parentId ? item.parentId : null, label: item.label, value: item.value, checked: item.checked });
                //в item больше полей, чем нам надо, поэтому берем подмножество, а не весь item
                //кроме того, в item.parentId после взятия из дерева содержится 0, а надо null
            });
            return data;
        };
        var getColumnsData = function () {
            var data = [];
            var groups = new Object();
            var gridColumnGroups = $(gridName).jqxGrid('columngroups');
            var gridColumnGroupsByName = new Object();
            gridColumnGroups.forEach(function (item) {
                gridColumnGroupsByName[item.name] = item;
            });
            var gridColumns = $(gridName).jqxGrid('columns').records;
            gridColumns.forEach(function (item, i) {
                if (item.columngroup && !groups[item.columngroup]) {
                    var group = gridColumnGroupsByName[item.columngroup];
                    while (group) {
                        data.push({ id: group.name, parentid: group.parentgroup, label: group.text, value: { is_group: true, name: group.name } });
                        groups[group.name] = group;
                        group = group.parent;
                    }
                    //var groupName = item.columngroup;
                    //gridColumnGroups.forEach(function (item) {
                    //    if (item.name == groupName) {
                    //        data.push({ id: item.name, label: item.text, value: { is_group: true, name: groupName } });
                    //        groups[groupName] = groupName;
                    //    }
                    //});
                }
                data.push({ id: i, parentid: item.columngroup, label: item.text, value: { is_group: false, name: item.datafield, columntype: item.columntype }, checked: !item.hidden });
            });
            return data;
        };
        // appends buttons to the status bar.
        var container = $("<div style='overflow: hidden;'></div>");
        var tuneButton = $("<div title='Grid settings'><img style='position: relative; margin-top: 2px;' src='/images/property.gif'/></div>");
        var saveStateButton = $("<div title='Save settings'><img style='position: relative; margin-top: 2px;' src='/images/save.gif'/><span style='margin-left: 4px; position: relative; top: -3px;'></span></div>");
        var reloadButton = $("<div title='Refresh'><img style='position: relative; margin-top: 2px;' src='/images/refresh.gif'/></div>");
        var loadButton = $("<div title='Load'><img style='position: relative; margin-top: 2px;' src='/images/edit1.png'/></div>");
        var newButton = $("<div title='New'><img style='position: relative; margin-top: 2px;' src='/images/new.gif'/></div>");
        var dropButton = $("<div title='Drop'><img style='position: relative; margin-top: 2px;' src='/images/delete.gif'/></div>");
        //                        var loadStateButton = $("<div style='float: left; margin-left: 5px;'><img style='position: relative; margin-top: 2px;' src='/images/refresh.gif'/><span style='margin-left: 4px; position: relative; top: -3px;'>Load</span></div>");
        container.append(tuneButton);
        container.append(saveStateButton);
        container.append(reloadButton);
        container.append(newButton);
        container.append(loadButton);
        container.append(dropButton);
        statusbar.append(container);

        tuneButton.jqxButton({ theme: theme });
        reloadButton.jqxButton({ theme: theme });
        saveStateButton.jqxButton({ theme: theme });
        loadButton.jqxButton({ theme: theme });
        newButton.jqxButton({ theme: theme });
        dropButton.jqxButton({ theme: theme });

        loadButton.click(function (event) {
            cObj.Load();
        });
        newButton.click(function (event) {
            cObj.New();
        });
        dropButton.click(function (event) {
            cObj.Drop();
        });

        var isTuning;
        var tuneDiv;
        var tuneListBox;
        //var state = null;
        tuneButton.click(function (event) {
            if (isTuning) {
                isTuning = false;
                tuneDiv.hide();
                return;
            }
            isTuning = true;
            if (tuneDiv) {
                tuneDiv.show();
                return;
            }
            tuneDiv = $("<div>");
            tuneDiv.css({
                "position": "absolute",
                "top": statusbar.offset().top + 40,
                "left": statusbar.offset().left,
                "z-index": 35,
                "height": 350,
                "background-color": "white",
                "border": "2px solid blue"
            });
            tuneListBox = $("<div>");
            $("body").append(tuneDiv);
            var clpsButton = $("<div title='Collapse' style='position:absolute;left:5px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/collapse.gif'/></div>");
            clpsButton.jqxButton({ theme: theme });
            clpsButton.click(function (event) {
                cObj.Collapse();
            });
            var expButton = $("<div title='Expand' style='position:absolute;left:35px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/expand.gif'/></div>");
            expButton.jqxButton({ theme: theme });
            expButton.click(function (event) {
                cObj.Expand();
            });
            var linkButton = $("<div title='Link' style='position:absolute;left:65px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/arrow.gif'/></div>");
            linkButton.jqxButton({ theme: theme });
            linkButton.click(function (event) {
                let linkClassName = prompt('Связать с:');
                cObj.Link(linkClassName);
                console.log(cObj.controllers);
            });
            var unLinkButton = $("<div title='Unlink' style='position:absolute;left:95px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/cut.gif'/></div>");
            unLinkButton.jqxButton({ theme: theme });
            unLinkButton.click(function (event) {
                let linkClassName = prompt('Убрать связь с:');
                cObj.RemoveController(linkClassName);
                console.log(cObj.controllers);
            });
            var renameButton = $("<div title='Переименовать столбец/группу' style='position:absolute;left:125px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/edit.png'/></div>");
            renameButton.jqxButton({ theme: theme });
            renameButton.click(function (event) {
                var selectedItem = tuneListBox.jqxTree('selectedItem');
                if (selectedItem != null) {
                    let newName = prompt('Переименовать столбец/группу ' + selectedItem.value.name, selectedItem.label);
                    tuneListBox.jqxTree('updateItem', { label: newName }, selectedItem.element);
                    // update the tree.
                    tuneListBox.jqxTree('render');
                    $(gridName).jqxGrid('setcolumnproperty', selectedItem.value.name, 'text', newName);
                }
            });
            var okButton = $("<div title='Save' style='position:absolute;left:155px;bottom:5px;width:20px;'><img style='position: relative; margin-top: 2px;' src='/images/save.gif'/></div>");
            okButton.jqxButton({ theme: theme });
            okButton.click(function (event) {
                //var $win = null;
                //if (document.getElementById('infowin'))
                //    $win = $('#infowin');
                //else {
                //    $win = $("<div id='infowin'><div id='info'></div></div>");
                //    $("body").append($win);
                //}
                //$win.jqxWindow({
                //    autoOpen: false, width: 500, position: 'bottom, center', height: 400, maxWidth: 800,
                //    resizable: false, isModal: true,
                //    //okButton: $('#ok'), cancelButton: $('#cancel'),
                //    initContent: function () {
                //        var treeItems = tuneListBox.jqxTree('getItems');
                //        $("#info").jqxTextArea({ height: 320, width: '100%', minLength: 1 }).val(JSON.stringify(getColumnsDataFromArray(treeItems)));
                //        //$('#ok').jqxButton({
                //        //    width: '65px',
                //        //    theme: 'energyblue'
                //        //});
                //        //$('#cancel').jqxButton({
                //        //    width: '65px',
                //        //    theme: 'energyblue'
                //        //});
                //        //$('#ok').focus();
                //    }
                //});
                ////$("#info").jqxTextArea('val', JSON.stringify(getColumnsData()));
                //var treeItems = tuneListBox.jqxTree('getItems');
                //$("#info").jqxTextArea('val', JSON.stringify(getColumnsDataFromArray(treeItems)));
                //$win.jqxWindow('open');
                //console.log($(gridName).jqxGrid('getstate'));
                var treeItems = tuneListBox.jqxTree('getItems');
                var body = new Object();
                body.class_name = cObj.class_name;
                body.form_type = 1;
                var columnsData = getColumnsDataFromArray(treeItems);
                body.value = JSON.stringify(columnsData);
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/Object/SetFormModel', false);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send(JSON.stringify(body));

                var N = 0;
                columnsData.forEach(function (item) {
                    if (!item.value.is_group) {
                        var colIsHidden = $(gridName).jqxGrid('getcolumnproperty', item.value.name, 'hidden');
                        if (colIsHidden)
                            $(gridName).jqxGrid('showcolumn', item.value.name);
                        $(gridName).jqxGrid('setcolumnindex', item.value.name, N++);//если меняли местами группы, сбиваются все индексы, поэтому надо перенумеровать
                        if (colIsHidden)
                            $(gridName).jqxGrid('hidecolumn', item.value.name);
                    }
                });
                console.log($(gridName).jqxGrid('getstate'));
                $(gridName).jqxGrid('savestate');
                isTuning = false;
                tuneDiv.hide();
            });
            tuneDiv.append(tuneListBox);
            tuneDiv.append(clpsButton);
            tuneDiv.append(expButton);
            tuneDiv.append(linkButton);
            tuneDiv.append(unLinkButton);
            tuneDiv.append(renameButton);
            tuneDiv.append(okButton);
            //tuneHideButton

            var source =
            {
                datatype: "json",
                datafields: [
                    { name: 'id' },
                    { name: 'parentid' },
                    { name: 'label' },
                    { name: 'value' },
                    { name: 'checked' }
                ],
                id: 'id',
                localdata: getColumnsData()
            };
            // create data adapter.
            var dataAdapter = new $.jqx.dataAdapter(source);
            // perform Data Binding.
            dataAdapter.dataBind();
            // get the tree items. The first parameter is the item's id. The second parameter is the parent item's id. The 'items' parameter represents 
            // the sub items collection name. Each jqxTree item has a 'label' property, but in the JSON data, we have a 'text' field. The last parameter 
            // specifies the mapping between the 'text' and 'label' fields.  
            var records = dataAdapter.getRecordsHierarchy('id', 'parentid', 'items', []);
            tuneListBox.jqxTree({
                source: records, hasThreeStates: true, checkboxes: true, allowDrag: true, allowDrop: true, width: '300px', height: '300px',
                dragEnd: function (item, dropItem, args, dropPosition, tree) {
                    if (/*+dropItem.id > 0 && */dropPosition == 'inside')  //до лучших времен никуда нельзя дропать вовнутрь, можно только перед или после
                        return false;
                    else {
                        if (dropItem.value.is_group)
                            alert('Положение столбцов будет пересчитано после сохранения');
                        if (item.parentId != dropItem.parentId)
                            alert('Поменялась привязка группы. Для корректного отображения необходимо перезагрузить форму.');
                        var index_from = $(gridName).jqxGrid('getcolumnindex', item.value.name);
                        var index_to = $(gridName).jqxGrid('getcolumnindex', dropItem.value.name);
                        if (!item.value.is_group) {
                            if (index_from > index_to && dropPosition == 'after')
                                index_to++;
                            if (index_from < index_to && dropPosition == 'before')
                                index_to--;
                            $(gridName).jqxGrid('setcolumnindex', item.value.name, index_to);
                        }
                    }
                }
            });
            tuneListBox.on('checkChange', function (event) {
                var item = tuneListBox.jqxTree('getItem', event.args.element);
                event.stopPropagation();
                $(gridName).jqxGrid('beginupdate');
                if (event.args.checked) {
                    $(gridName).jqxGrid('showcolumn', item.value.name);
                }
                else {
                    $(gridName).jqxGrid('hidecolumn', item.value.name);
                }
                $(gridName).jqxGrid('endupdate');
            });
            //var listSource = new Array();
            //var gridColumns = $(gridName).jqxGrid('columns').records;
            //gridColumns.forEach(function (item, i) {
            //    listSource[i] = { label: item.text, value: item.datafield, checked: !item.hidden };
            //});
            //tuneListBox.jqxListBox({ source: listSource, width: 200, height: 200, checkboxes: true });
            //tuneListBox.on('checkChange', function (event) {
            //    event.stopPropagation();
            //    $(gridName).jqxGrid('beginupdate');
            //    if (event.args.checked) {
            //        $(gridName).jqxGrid('showcolumn', event.args.value);
            //    }
            //    else {
            //        $(gridName).jqxGrid('hidecolumn', event.args.value);
            //    }
            //    $(gridName).jqxGrid('endupdate');
            //});

        });
        // reload grid data.
        reloadButton.click(function (event) {
            cObj.List();
        });
        saveStateButton.click(function () {
            // save the current state of jqxGrid.
            $(gridName).jqxGrid('savestate');
        });
    }

    function InitGridFromObj(className) {

        function getColumnType(typeName) {
            switch (typeName) {
                case 'DIOS.Common.SqlBoolean':
                    return 'checkbox';
                case 'LongText':
                    return 'template';
                    return 'textbox';
            }
        }
        var renderGridRows = function (params) {
            var xhr = new XMLHttpRequest();
            var sortColumn = cObj.class_name;
            if (SortState[cObj.class_name]) {
                sortColumn = SortState[cObj.class_name].sortcolumn;
                if (SortState[cObj.class_name].sortdirection.descending)
                    sortColumn += ' desc';
            }
            xhr.open('GET', '/Object/List?class_name=' + cObj.class_name + '&filter=' + cObj.GetFilter() + '&order=' + sortColumn + '&limit=10&offset=' + params.startindex, false);

            xhr.send();
            var data = JSON.parse(xhr.responseText);
            return JSON.parse(data.response_body);
        }

        //var totalcolumnrenderer = function (row, column, cellvalue) {
        //        var cellvalue = $.jqx.dataFormat.formatnumber(cellvalue, 'c2');
        //        return '<span style="margin: 6px 3px; font-size: 12px; float: right; font-weight: bold;">' + cellvalue + '</span>';
        //}
        var getEditorValue = function (row, cellvalue, editor) {
            return $('#editor').jqxTextArea('val');
        };
        var initEditor = function (row, cellvalue, editor, celltext, pressedChar) {
            $('#editor').jqxTextArea('val', cellvalue);
            $('#window').jqxWindow('open');
        };
        var createEditor = function (row, cellvalue, editor) {
            $('#window').jqxWindow({
                autoOpen: false, width: 500, position: 'bottom, center', height: 400, maxWidth: 800,
                resizable: false, isModal: true,
                okButton: $('#ok'), cancelButton: $('#cancel'),
                initContent: function () {
                    $("#editor").jqxTextArea({ height: 320, width: '100%', minLength: 1 }).val(cellvalue);
                    $('#ok').jqxButton({
                        width: '65px',
                        theme: 'energyblue'
                    });
                    $('#cancel').jqxButton({
                        width: '65px',
                        theme: 'energyblue'
                    });
                    $('#ok').focus();
                }
            });
            $('#window').on('close', function (event) {
                if (event.args.dialogResult.OK) {
                    var rowindex = $(gridName).jqxGrid('getselectedrowindex');
                    $(gridName).jqxGrid('beginupdate');

                    var body = new Object();
                    body.class_name = cObj.class_name;
                    var changedObject = { id: $(gridName).jqxGrid('getrowid', rowindex) };
                    changedObject[editedObject.DataField] = $('#editor').jqxTextArea('val');
                    body.json_object = JSON.stringify(changedObject);
                    var xhr = new XMLHttpRequest();
                    xhr.open('POST', '/Object/Update', false);
                    xhr.setRequestHeader('Content-Type', 'application/json');
                    xhr.send(JSON.stringify(body));

                    $(gridName).jqxGrid('endupdate');
                }
            });
        }

        /////////////////////////////////////////////////////////////////////////////////here starts initialization of Grid////////////////////////////////////////////////////////////////////////////////
        var xhr = new XMLHttpRequest();
        var formModel = "";
        var data = "";

        xhr.open('GET', '/Object/GetFormModel?class_name=' + className + '&form_type=1', false);
        xhr.send();
        data = JSON.parse(xhr.responseText);
        formModel = data.response_body ? JSON.parse(data.response_body) : [];
        //console.log(formModel);

        ColumnModels[className] = new Array();
        if (formModel.length) {
            var columnGroups = [];
            formModel.forEach(function (item) {
                if (item.value.is_group) {
                    columnGroups.push({ text: item.label, align: 'center', name: item.id, parentgroup: item.parentid });
                }
                else {
                    ColumnModels[className].push(
                        {
                            text: item.label,
                            align: 'center',
                            datafield: item.value.name,
                            width: 80,
                            columngroup: item.parentid,
                            columntype: item.value.columntype ? item.value.columntype : 'textbox',
                            createeditor: createEditor,
                            initeditor: initEditor,
                            geteditorvalue: getEditorValue,
                            cellbeginedit: function (row, datafield, columntype) {
                                editedObject.DataField = datafield;
                                return true;
                            }
                        });
                }
            });
            ColumnGroups[className] = columnGroups.length ? columnGroups : null;
        }
        else {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', '/Object/ColumnsList?class_name=' + className, false);
            xhr.send();
            data = JSON.parse(xhr.responseText);
            var columnsInfo = JSON.parse(data.response_body);
            if (columnsInfo && columnsInfo.length) {
                columnsInfo.forEach(function (item, i) {
                    ColumnModels[className][i] =
                    {
                        text: item.DisplayName,
                        datafield: item.Name,
                        width: 80,
                        columntype: getColumnType(item.TypeName),
                        createeditor: createEditor,
                        initeditor: initEditor,
                        geteditorvalue: getEditorValue,
                        cellvaluechanging: function (row, column, columntype, oldvalue, newvalue) {
                            // return the old value, if the new value is empty.
                            //console.log(newvalue);
                            //if (newvalue == "") return oldvalue;
                        },
                        cellbeginedit: function (row, datafield, columntype) {
                            editedObject.DataField = datafield;
                            return true;
                        }
                    };
                });
            }
        }
        //console.log(ColumnModels[className]);

        gridName = "#" + className;
        $(gridName).jqxGrid(
            {
                width: 1200,//getWidth('Grid'),
                autoheight: true,
                rowsheight: 20,
                pagerheight: 25,
                source: cObj.GetDataAdapter(),
                sortable: true,
                columnsresize: true,
                columnsreorder: true,
                virtualmode: true,
                pageable: true,
                editable: true,
                editmode: 'dblclick',
                rendergridrows: renderGridRows,
                //showtoolbar: true,
                //rendertoolbar: renderToolBar,
                columns: ColumnModels[className],
                columngroups: ColumnGroups[className]
            });

        $(gridName).jqxGrid({ pagermode: "simple" });

        $(gridName).jqxGrid('loadstate');

        $("#grid").on('columnreordered', function (event) {
            console.log(event.args);
        });

        $(gridName).on("sort", function (event) {
            SortState[className] = event.args.sortinformation;
            if (event.owner.dataview.pagenum == 0)
                $(gridName).jqxGrid({ source: cObj.GetDataAdapter() });
            else {
                $(gridName).jqxGrid('gotoprevpage');
                $(gridName).jqxGrid('gotonextpage');
            }
        });
        $(gridName).on('rowselect', function (event) {
            cObj.Cancel();
            cObj.SetObjectData(event.args.row, event.args.rowindex);
        });

    }

    xhr = new XMLHttpRequest();
    xhr.open('GET', '/Object/GetFormModel?class_name=' + className + '&form_type=3', false);

    xhr.send();
    data = JSON.parse(xhr.responseText);
    formModel = data.response_body ? JSON.parse(data.response_body) : [];
    var vueEdit = initEdit(className, formModel);

    xhr = new XMLHttpRequest();
    xhr.open('GET', '/Object/GetFormModel?class_name=' + className + '&form_type=2', false);

    xhr.send();
    data = JSON.parse(xhr.responseText);
    formModel = data.response_body ? JSON.parse(data.response_body) : [];
    var vueFilter = initFilter(className, formModel);

    var toolBarDiv = $('<div>', {
        id: className + 'ToolBar',
        style: 'width:30px;height:100%'
    });
    renderToolBar(toolBarDiv);
    this.append(toolBarDiv);
    var gridDiv = $('<div>', {
        id: className
    });
    gridDiv.css({
        position: 'absolute',
        top: '0px',
        left: '30px'
    });
    this.append(gridDiv);

        if (cObj)
            cObj.destroy();

        cObj = new Vue({
            data: {
                el: this.grid_name,
                class_name: className,
                filterObject: vueFilter,
                editObject: vueEdit,
                currentId: null,
                controllers: []
            },
            methods: {
                GetFilterFormMinHeight() {
                    return this.filterObject ? this.filterObject.minFormHeight : 0;
                },
                GetFilter: function () {
                    if (this.controllers.length > 0) {
                        var myClassName = this.class_name;
                        var result = new Array();
                        this.controllers.forEach(function (item) {
                            if (item.controlledClassName == myClassName) {
                                result.push({ Name: item.masterClassName.toLowerCase(), Value: item.masterObj.currentId });
                            }
                        });
                        return JSON.stringify(result);
                    }
                    return this.filterObject ? this.filterObject.GetFilter() : [];
                },
                SetObjectData: function (row, rowindex) {
                    this.currentId = $(gridName).jqxGrid('getrowid', rowindex);
                    if (this.editObject)
                        this.editObject.SetObj(row);
                    var myClassName = this.class_name;
                    this.controllers.forEach(function (item) {
                        if (item.masterClassName == myClassName) {
                            item.controlledObj.List();
                        }
                    });
                },
                GetDataAdapter: function () {
                    //console.log(this.GetFilter());
                    var xhr = new XMLHttpRequest();
                    xhr.open('GET', '/Object/List?class_name=' + this.class_name + '&filter=' + this.GetFilter() + '&limit=0&offset=0', false);
                    xhr.send();
                    var data = JSON.parse(xhr.responseText);

                    var source =
                    {
                        datatype: "array",
                        //localdata: {},
                        id: "id",
                        updaterow: function (rowid, rowdata, commit) {
                            // synchronize with the server - send update command
                            // call commit with parameter true if the synchronization with the server is successful
                            // and with parameter false if the synchronization failder.
                            //commit(true);
                        },
                        totalrecords: data.row_count
                    };

                    var dataAdapter = new $.jqx.dataAdapter(source);
                    return dataAdapter;
                },
                List() {
                    //console.log($(gridName).jqxGrid('getdatainformation'));
                     
                    $(gridName).jqxGrid('gotopage', 0);
                    $(gridName).jqxGrid({ source: this.GetDataAdapter() });
                },
                Load() {
                    if (this.editObject)
                        this.editObject.Load();
                },
                New() {
                    if (this.editObject)
                        this.editObject.New();
                },
                Drop() {
                    var rowindex = $(gridName).jqxGrid('selectedrowindex');
                    var objectid = $(gridName).jqxGrid('getrowid', rowindex);
                    if (confirm('Удалить объект ' + objectid + '?')) {
                        var body = new Object();
                        body.class_name = this.class_name;
                        body.objectid = objectid;
                        var xhr = new XMLHttpRequest();
                        xhr.open('POST', '/Object/Drop', false);
                        xhr.setRequestHeader('Content-Type', 'application/json');
                        xhr.send(JSON.stringify(body));
                        alert('объект ' + objectid + ' удален');
                    }
                },
                Cancel() {
                    if (this.editObject)
                        this.editObject.Cancel();
                },
                Post(obj) {
                    var body = new Object();
                    body.class_name = this.class_name;
                    var changedObject = new Object();
                    if (!this.editObject.is_new) {
                        changedObject.id = this.currentId;
                    }
                    for (f in obj) {
                        changedObject[f] = obj[f];
                    }
                    body.json_object = JSON.stringify(changedObject);
                    var xhr = new XMLHttpRequest();
                    if (this.editObject.is_new)
                        xhr.open('POST', '/Object/Create', false);
                    else
                        xhr.open('POST', '/Object/Update', false);
                    xhr.setRequestHeader('Content-Type', 'application/json');
                    xhr.send(JSON.stringify(body));
                },
                Collapse() {
                    $('#f_spl' + this.class_name).jqxSplitter('collapse');
                    $('#d_spl' + this.class_name).jqxSplitter('collapse');
                },
                Expand() {
                    $('#f_spl' + this.class_name).jqxSplitter('expand');
                    $('#d_spl' + this.class_name).jqxSplitter('expand');
                },
                Link(linkClassName) {
                    if (!loadedClasses[linkClassName]) {
                        alert('class ' + linkClassName + ' is not initialized');
                        return;
                    }
                    if (this.class_name == linkClassName) {
                        alert('can not link to myself');
                        return;
                    }
                    this.AddController({
                        masterClassName: this.class_name,
                        controlledClassName: linkClassName,
                        masterObj: this,
                        controlledObj: loadedClasses[linkClassName]
                    }, true);
                },
                AddController(controller, recursive) {
                    var alreadyLinked = false;
                    this.controllers.forEach(function (item) {
                        if (item.masterClassName == controller.masterClassName
                            || item.masterClassName == controller.controlledClassName
                            || item.controlledClassName == controller.masterClassName
                            || item.controlledClassName == controller.controlledClassName
                        ) {
                            alreadyLinked = true;
                        }
                    });
                    if (!alreadyLinked) {
                        this.controllers.push(controller);
                        if(recursive)
                            controller.controlledObj.AddController(controller, false);
                    }
                },
                RemoveController(linkClassName, noRecursion) {
                    var recursive = !noRecursion;
                    var ownerClassName = this.class_name;
                    this.controllers.forEach(function (item, i, items) {
                        if (item.masterClassName == linkClassName
                            || item.controlledClassName == linkClassName) {
                            if (recursive) {
                                if (item.masterClassName == linkClassName) {
                                    console.log('remove slave controller ' + ownerClassName + ' from ' + item.masterObj.class_name);
                                    item.masterObj.RemoveController(ownerClassName, true);
                                }
                                else {
                                    console.log('remove master controller ' + ownerClassName + ' from ' + item.controlledObj.class_name);
                                    item.controlledObj.RemoveController(ownerClassName, true);
                                }
                            }
                            items.splice(i, 1);
                        }
                    });
                },
                destroy: function () {
                    $(gridName).jqxGrid('destroy');
                    if (this.editObject)
                        this.editObject.destroy();
                    if (this.filterObject)
                        this.filterObject.destroy();
                    this.$destroy();
                }

            },
            created: function (){
                this.editObject.SetMainObj(this);
            }
        });

    loadedClasses[className] = cObj;

    InitGridFromObj(className);

    return cObj;

    };
})(jQuery);