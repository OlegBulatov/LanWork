//    var currentModuleName = '';
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

                                                    $tree.on("changed.jstree", function (e, data) {
                                                        if (data.selected.length) {
                                                            var selected = data.instance.get_node(data.selected[0]);
                                                            var moduleName = selected.data;
                                                            //if (moduleName != currentModuleName) {
                                                                //LoadFancyGrid(selected.data);
                                                                if (!showPanel(moduleName))
                                                              //      currentModuleName = moduleName;
                                                                //else
                                                                    initBrowser(moduleName);
                                                            //}
                                                        }
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
