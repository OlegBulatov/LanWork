var loadedClasses = new Object();

(function ($) {
$.fn.clientObj = function (className) {
    var cObj;

    var SortState = new Object();
    var LoadedState = new Object();
    var ColumnModels = new Object();

    var editedObject = new Object();
    var gridName = '#grid';

    //var rendergridrows = function (params) {
    //    var xhr = new XMLHttpRequest();
    //    var sortColumn = cObj.class_name;
    //    if (SortState[cObj.class_name]) {
    //        sortColumn = SortState[cObj.class_name].sortcolumn;
    //        if (SortState[cObj.class_name].sortdirection.descending)
    //            sortColumn += ' desc';
    //    }
    //    xhr.open('GET', '/Object/List?class_name=' + cObj.class_name + '&filter=' + cObj.GetFilter() + '&order=' + sortColumn + '&limit=10&offset=' + params.startindex, false);

    //    xhr.send();
    //    var data = JSON.parse(xhr.responseText);
    //    return JSON.parse(data.response_body);
    //}
    //var totalcolumnrenderer = function (row, column, cellvalue) {
    //        var cellvalue = $.jqx.dataFormat.formatnumber(cellvalue, 'c2');
    //        return '<span style="margin: 6px 3px; font-size: 12px; float: right; font-weight: bold;">' + cellvalue + '</span>';
    //}

    var SortState = new Object();
    var LoadedState = new Object();
    var ColumnModels = new Object();

    function renderToolBar(statusbar) {
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
        //var state = null;
        tuneButton.click(function (event) {
            if (isTuning) {
                isTuning = false;
                tuneDiv.hide();
                return;
            }
            isTuning = true;
            tuneDiv = $("<div>");
            tuneDiv.css({
                "position": "absolute",
                "top": statusbar.offset().top + 40,
                "left": statusbar.offset().left,
                "z-index": "35",
                "background-color": "white",
                "border": "2px solid blue"
            });
            //var okButton = $("<div style='position: absolute; margin-left: 5px; bottom: 2px;'><img style='position: relative; margin-top: 2px;' src='/images/save.gif'/><span style='margin-left: 4px; position: relative; top: -3px;'>Save</span></div>");
            //okButton.jqxButton({ width: 65, height: 20 });
            //okButton.click(function (event) {
            //    tuneDiv.hide();
            //});
            //tuneDiv.append(okButton);
            var listSource = new Array();
            var gridColumns = $(gridName).jqxGrid('columns').records;
            gridColumns.forEach(function (item, i) {
                listSource[i] = { label: item.text, value: item.datafield, checked: !item.hidden };
            });
            tuneDiv.jqxListBox({ source: listSource, width: 200, height: 200, checkboxes: true });
            tuneDiv.on('checkChange', function (event) {
                event.stopPropagation();
                $(gridName).jqxGrid('beginupdate');
                if (event.args.checked) {
                    $(gridName).jqxGrid('showcolumn', event.args.value);
                }
                else {
                    $(gridName).jqxGrid('hidecolumn', event.args.value);
                }
                $(gridName).jqxGrid('endupdate');
            });

            $("body").append(tuneDiv);
        });
        // reload grid data.
        reloadButton.click(function (event) {
            $(gridName).jqxGrid('gotopage', 0);
            $(gridName).jqxGrid({ source: cObj.GetDataAdapter() });
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
        xhr.open('GET', '/Object/ColumnsList?class_name=' + className, false);
        xhr.send();
        data = JSON.parse(xhr.responseText);
        ColumnModels[className] = new Array();
        var columnsInfo = JSON.parse(data.response_body);
        if (columnsInfo && columnsInfo.length)
            columnsInfo.forEach(function (item, i) {
                ColumnModels[className][i] =
                {
                    text: item.DisplayName,
                    datafield: item.Name,
                    width: 80,
                    columntype: getColumnType(item.TypeName),
                    createeditor: createEditor,
                    initeditor: function (row, cellvalue, editor, celltext, pressedChar) {
                        $('#editor').jqxTextArea('val', cellvalue);
                        $('#window').jqxWindow('open');
                    },
                    geteditorvalue: function (row, cellvalue, editor) {
                        return $('#editor').jqxTextArea('val');
                    },
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


        gridName = "#" + className;
        //let gridContainer = $('#gcontainer');
        //gridContainer.empty();
        //$('<div>', {
        //    id: className + 'ToolBar',
        //    style: 'position:absolute;left:0px;width:10px;height:100%'
        //}).appendTo(gridContainer);
        //$('<div>', {
        //    id: className
        //}).appendTo(gridContainer);
        $(gridName).jqxGrid(
            {
                width: getWidth('Grid'),
                autoheight: true,
                rowsheight: 20,
                source: cObj.GetDataAdapter(),
                sortable: true,
                columnsresize: true,
                columnsreorder: true,
                virtualmode: true,
                pageable: true,
                editable: true,
                editmode: 'dblclick',
                rendergridrows: renderGridRows,
                showtoolbar: true,
                //rendertoolbar: renderToolBar,
                columns: ColumnModels[className]
            });

        $(gridName).jqxGrid({ pagermode: "simple" });

        //if (!LoadedState[className]) {
        $(gridName).jqxGrid('loadstate');
        //    LoadedState[className] = true;
        //}

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
            cObj.SetEditedObject(event.args.row);
        });

    }

    var formModel = "";
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/Object/GetFormModel?class_name=' + className + '&form_type=3', false);

    xhr.send();
    var data = JSON.parse(xhr.responseText);
    formModel = data.response_body ? JSON.parse(data.response_body) : [];
    var vueEdit = initEdit(className, formModel);

    xhr = new XMLHttpRequest();
    xhr.open('GET', '/Object/GetFormModel?class_name=' + className + '&form_type=2', false);

    xhr.send();
    var data = JSON.parse(xhr.responseText);
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
                controllers: []
            },
            methods: {
                GetFilter: function () {
                    return this.filterObject ? this.filterObject.GetFilter() : [];
                },
                SetEditedObject: function (row) {
                    if (this.editObject)
                        this.editObject.SetObj(row);
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
                        var rowindex = $(gridName).jqxGrid('selectedrowindex');
                        changedObject.id = $(gridName).jqxGrid('getrowid', rowindex);
                    }
                    for (f in obj) {
                        changedObject[f] = obj[f];
                    }
                    console.log(changedObject);
                    body.json_object = JSON.stringify(changedObject);
                    var xhr = new XMLHttpRequest();
                    if (this.editObject.is_new)
                        xhr.open('POST', '/Object/Create', false);
                    else
                        xhr.open('POST', '/Object/Update', false);
                    xhr.setRequestHeader('Content-Type', 'application/json');
                    xhr.send(JSON.stringify(body));
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

    };
})(jQuery);