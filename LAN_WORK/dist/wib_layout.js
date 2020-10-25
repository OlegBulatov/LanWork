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
                                                    InitTree($tree);
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
                                            title: 'CurrentModule',
                                            contentContainer: 'ModuleFrame'
                                        },
                                        {
                                            type: 'layoutPanel',
                                            title: 'Help',
                                            contentContainer: 'HelpPanel'
                                        }]
                                }
                            ]
                    }
                ];
