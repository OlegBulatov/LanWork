            var innerLayout =
                [
                    {
                        type: 'layoutGroup',
                        orientation: 'horizontal',
                        items:
                            [
                                {
                                    type: 'layoutGroup',
                                    orientation: 'vertical',
                                    width: '80%',
                                    items: [{
                                        type: 'documentGroup',
                                        height: '10%',
                                        minHeight: 500,
                                        items: [{
                                            type: 'documentPanel',
                                            title: 'Filter',
                                            child_id: 'filterForm',
                                            child_class: 'f-form',
                                            contentContainer: 'FilterPanel'
                                        }
                                        ]
                                    }, {
                                        type: 'documentGroup',
                                        height: '55%',
                                        minHeight: 200,
                                        items: [{
                                            type: 'documentPanel',
                                            title: 'Data grid',
                                            child_id: 'browseForm',
                                            contentContainer: 'BrowserPanel'
                                        }]
                                    }, {
                                        type: 'tabbedGroup',
                                        height: '35%',
                                        minHeight: 100,
                                        items: [{
                                            type: 'layoutPanel',
                                            title: 'Details',
                                            child_id: 'editForm',
                                            child_class: 'f-form',
                                            contentContainer: 'DetailsPanel'
                                        }]
                                    }]
                                }
                            ]
                    }
                ];
