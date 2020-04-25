var currentModuleName = 'Help';
var clickAfterSelect = false;
    var layout =
                [
                    {
                        type: 'layoutGroup',
                        orientation: 'horizontal',
                        items:
                            [
                                {
                                    type: 'tabbedGroup',
                                    width: '12%',
                                    minWidth: 200,
                                    items:
                                        [
                                            {
                                                type: 'layoutPanel',
                                                title: 'Module Tree',
                                                contentContainer: 'ModulesTree',
                                                initContent: function () {
                                                    var $tree = $('#modulesTree');
                                                    var data = [
                                                        {
                                                            "id": "1", "text": "Администрирование"
                                                        },
                                                        { "id": "3", "parentid": "1", "text": "Объекты", "value": { "name": "OBJECT_TYPE" } },
                                                        { "id": "4", "parentid": "1", "text": "Модули", "value": { "name": "MODULE" } },
                                                        { "id": "5", "parentid": "1", "text": "Формы", "value": { "name": "FORM" } },
                                                        { "id": "8", "parentid": "1", "text": "Системные параметры", "value": { "name": "SYS_PARAM" } },
                                                        {
                                                            "id": "2", "text": "Модули"
                                                        },
                                                        { "id": "6", "parentid": "2", "text": "Серверы", "value": { "name": "LNT_SERVER" } },
                                                        { "id": "7", "parentid": "2", "text": "Заявки JIRA", "value": { "name": "JIRA_ISSUE" } },
                                                        { "id": "9", "parentid": "2", "text": "Отладка", "value": { "name": "TEST_OBJECT", "virtual_class": true } }

                                                    ];
                                                    var source =
                                                    {
                                                        datatype: "json",
                                                        datafields: [
                                                            { name: 'id' },
                                                            { name: 'parentid' },
                                                            { name: 'text' },
                                                            { name: 'value' }
                                                        ],
                                                        id: 'id',
                                                        localdata: data
                                                    };
                                                    // create data adapter.
                                                    var dataAdapter = new $.jqx.dataAdapter(source);
                                                    // perform Data Binding.
                                                    dataAdapter.dataBind();
                                                    // get the tree items. The first parameter is the item's id. The second parameter is the parent item's id. The 'items' parameter represents 
                                                    // the sub items collection name. Each jqxTree item has a 'label' property, but in the JSON data, we have a 'text' field. The last parameter 
                                                    // specifies the mapping between the 'text' and 'label' fields.  
                                                    var records = dataAdapter.getRecordsHierarchy('id', 'parentid', 'items', [{ name: 'text', map: 'label' }]);
                                                    $tree.jqxTree({ allowDrag: false, allowDrop: false, source: records, width: '300px' });
                                                    $tree.on('select', function (event) {
                                                        var args = event.args;
                                                        var item = $tree.jqxTree('getItem', args.element);
                                                        if (!item.value)
                                                            return;
                                                        var helpText = document.getElementById('helpText');
                                                        currentModuleName = item.value.name;
                                                        var moduleOpened = showPanel(currentModuleName);
                                                        if (!moduleOpened) {
                                                            if (currentModuleName) {
                                                                helpText.innerText = 'Для открытия модуля ' + currentModuleName + ' еще раз нажмите кнопку мыши';
                                                                clickAfterSelect = true;
                                                            }
                                                            else
                                                                helpText.innerText = '';
                                                            showPanel('Help');
                                                        }
                                                    });
                                                    $tree.on('itemClick', function (event) {
                                                        if (!clickAfterSelect) {
                                                            var args = event.args;
                                                            var item = $tree.jqxTree('getItem', args.element);
                                                            if (item.value) {
                                                                helpText.innerText = 'Уже открытый модуль можно открыть повторно, выбрав мышью в дереве модулей';
                                                                if (!showPanel(item.value.name)) 
                                                                    initBrowser(item.value.name, item.value.virtual_class);
                                                            }
                                                        }
                                                        clickAfterSelect = false;
                                                        //alert('itemClick');
                                                    });
                                                    //var $tree = $('#modulesTree');

                                                    //$tree.jstree({
                                                    //    'core': {
                                                    //        "check_callback": true,
                                                    //        'data': {
                                                    //            'multiple': false,
                                                    //            "url": "/demotree.json",
                                                    //            "dataType": "json",
                                                    //            "data": function (node) {
                                                    //                return { "id": node.id };
                                                    //            }
                                                    //        }
                                                    //    },
                                                    //    'plugins': ["state", "contextmenu"]
                                                    //});

                                                    //$tree.on("select_node.jstree", function (e, data) {
                                                    //    var helpText = document.getElementById('helpText');
                                                    //    if (data.selected.length) {
                                                    //        var selected = data.instance.get_node(data.selected[0]);
                                                    //        currentModuleName = selected.data;
                                                    //    }
                                                    //    var moduleOpened = showPanel(currentModuleName);
                                                    //    if (!moduleOpened) {
                                                    //        helpText.innerText = 'For opening of module ' + currentModuleName + ' use mouse double click';
                                                    //        showPanel('Help');
                                                    //    }
                                                    //});
                                                    //$tree.on("dblclick.jstree", function (e, data) {
                                                    //    //if (data.selected.length) {
                                                    //    //    var selected = data.instance.get_node(data.selected[0]);
                                                    //    //    var moduleName = selected.data;
                                                    //    //    //if (moduleName != currentModuleName) {
                                                    //    //        //LoadFancyGrid(selected.data);
                                                    //    helpText.innerText = 'You can show already opened module with mouse click';
                                                    //    if (!showPanel(currentModuleName)) 
                                                    //          //      currentModuleName = moduleName;
                                                    //            //else
                                                    //        initBrowser(currentModuleName);
                                                    //    //    //}
                                                    //    //}
                                                    //});

                                                }
                                            }
                                        ]
                                },
                                {
                                    type: 'tabbedGroup',
                                    orientation: 'vertical',
                                    width: '88%',
                                    items: [
                                        {
                                            type: 'layoutPanel',
                                            title: 'Help',
                                            contentContainer: 'HelpPanel'
                                        }]
                                }
                            ]
                    }
                ];
