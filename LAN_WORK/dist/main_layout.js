    var currentModuleName = 'Help';
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

                                                    $tree.jstree({
                                                        'core': {
                                                            "check_callback": true,
                                                            'data': {
                                                                'multiple': false,
                                                                "url": "/demotree.json",
                                                                "dataType": "json",
                                                                "data": function (node) {
                                                                    return { "id": node.id };
                                                                }
                                                            }
                                                        },
                                                        'plugins': ["state", "contextmenu"]
                                                    });

                                                    $tree.on("select_node.jstree", function (e, data) {
                                                        var helpText = document.getElementById('helpText');
                                                        if (data.selected.length) {
                                                            var selected = data.instance.get_node(data.selected[0]);
                                                            currentModuleName = selected.data;
                                                        }
                                                        var moduleOpened = showPanel(currentModuleName);
                                                        if (!moduleOpened) {
                                                            helpText.innerText = 'For opening of module ' + currentModuleName + ' use mouse double click';
                                                            showPanel('Help');
                                                        }
                                                    });
                                                    $tree.on("dblclick.jstree", function (e, data) {
                                                        //if (data.selected.length) {
                                                        //    var selected = data.instance.get_node(data.selected[0]);
                                                        //    var moduleName = selected.data;
                                                        //    //if (moduleName != currentModuleName) {
                                                        //        //LoadFancyGrid(selected.data);
                                                        helpText.innerText = 'You can show already opened module with mouse click';
                                                        if (!showPanel(currentModuleName)) 
                                                              //      currentModuleName = moduleName;
                                                                //else
                                                            initBrowser(currentModuleName);
                                                        //    //}
                                                        //}
                                                    });

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
