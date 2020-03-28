(function ($) {
    $.fn.clientObj = function (className, vueFilter) {
        if (cObj)
            cObj.destroy();

        cObj = new Vue({
            data: {
                class_name: className,
                filtersSource: vueFilter,
                controllers: []
            },
            methods: {
                GetFilter: function () {
                    return this.filtersSource.GetFilter();
                },
                GetDataAdapter: function () {
                    console.log(this.GetFilter());
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
                destroy: function () {
                    this.$destroy();
                }

            }
        });
        //if (!keydown_assigned) {
        //    $(document).keydown(function (e) { cObj.ProcessKey(e.key, e.altKey, e.ctrlKey, e.shiftKey) });
        //    keydown_assigned = true;
        //}

    };
})(jQuery);