Vue.component('enabler', {
    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: '-20px',
                top: '0px',
            }
        }
    },
    props: ['value', 'ctrl'],
    template: '<div v-bind:style="styleD"><input type="checkbox" v-model:checked="ctrl.enabled" ></div>'
});

Vue.component('fltdiv', {

methods:{
    DoSelect: function(event){
        objFilter.SelectByIndex(this.app_index);
    }
},

computed: {
  styleD: function () {
    return {
        position: 'absolute',
        left: this.ctrl.left + 'px',
        top: this.ctrl.top + 'px',
    }
  },
  styleI: function () {
    return {
        width: this.ctrl.width + 'px',
        height: this.ctrl.height + 'px',
    }
  }
},
props: ['id','ctrl'],

    template: '<div v-bind:id="id" v-bind:style="styleD"><input type="text" v-bind:readonly="!ctrl.enabled" v-bind:style="styleI" v-model="ctrl.filter_value" /><div style="position:relative;top:-40px;left:0px;color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div><enabler v-bind:ctrl="ctrl"></enabler></div>'
});

Vue.component('fltsel', {
    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: this.ctrl.left + 'px',
                top: this.ctrl.top + 'px',
            }
        },
        styleI: function () {
            return {
                width: this.ctrl.width + 'px',
                height: this.ctrl.height + 'px',
            }
        }
    },
    methods: {
        ProcessKey: function (event) {
            if (event.key == "Control")
                return;
            if (event.key == "Delete")
                this.ctrl.filter_value = null;
        }
    },
    props: ['id','ctrl'],
    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="position:relative;left:0px;color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div><select v-on:keydown="ProcessKey" v-bind:style="styleI" v-model="ctrl.filter_value" name="ftype"><option v-for="opt in ctrl.options" v-bind:value="opt.value">{{ opt.text }}</option></select></div>'
});

Vue.component('fltdate', {
    mounted: function () {
        $('#' + this.id).datepicker({
            buttonImage: "/dist/themes/default/Calendar__.png", showOn: "button", buttonImageOnly: true, changeMonth: true, buttonText: "choose date",
            dateFormat: 'dd.mm.yy',
            onSelect: function () {
                this.dispatchEvent(new Event('input')); 
            }
        });
    },

    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: this.ctrl.left + 'px',
                top: this.ctrl.top + 'px',
            }
        },
        styleI: function () {
            return {
                width: this.ctrl.width + 'px',
                height: this.ctrl.height + 'px'
            }
        }
    },
    props: ['id','ctrl'],
    template: '<div v-bind:style="styleD"><input v-model="ctrl.filter_value" v-bind:id="id" v-bind:style="styleI" type="text"><div style="position:relative;top:-42px;left:0px;color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div></div>'
});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    

//var initFilterModel = {
//    FORM:[
//        { class: 'textbox', caption: 'entity1', data_field: 'f1', filter_value: 'v1', id: 'e1', app_index: 0, left: 98, top: 50, width: 100, height: 25, is_selected: false, is_visible: true },
//        { class: 'datepick', caption: null, data_field: 'creation_date', filter_value: '', id: 'e2', app_index: 1, left: 200, top: 50, width: 90, height: 25, is_selected: false, is_visible: true },
//        {
//            class: 'combobox', caption: 'entity3', data_field: 'f3', filter_value: 't2', id: 'e3', app_index: 2, left: 402, top: 50, width: 160, height: 25, is_selected: false, is_visible: true,
//            options: [{ value: "1", text: "Che Bur" }, { value: "2", text: "Gena the croc" }, { value: "3", text: "Ch-claque" }, { value: "4", text: "Larissa" }]
//        }
//    ]};


function initFilter(className, filterModel) {
    var objFilter = null;

    var filterDiv = document.getElementById('filterForm' + className);
    if (filterDiv)
        filterDiv.innerHTML = "";
    $('#filterForm' + className).filterForm(idGenerator);
    //if (objFilter)
    //    objFilter.destroy();

    objFilter = new Vue({
        el: '#filterForm' + className,
        data: {
            selected_index: -1,
            ctrls: filterModel
        },
        methods: {
            ProcessKey: function (key, altKey, ctrlKey, shiftKey) {
                if (key == "Control")
                    return;
                console.log(key);
            },
            GetFilter: function () {
                let result = new Array();
                this.$children.forEach(function (item) {
                    if (item.ctrl.filter_value)
                        result.push({
                            Name: item.ctrl.data_field,
                            Value: item.ctrl.filter_value
                        });
                });
                return JSON.stringify(result);
            },
            GetId: function () {
                return idGenerator.next().value;
            },
            destroy: function () {
                this.$destroy();
            }

        }
    });
    return objFilter;
    //$(document).keydown(function (e) { objFilter.ProcessKey(e.key, e.altKey, e.ctrlKey, e.shiftKey) });
}

(function ($) {
    function initVueDivForClass(divName, className, parentObj) {
        var fltDiv = $("<" + divName + "></" + divName + ">");
        fltDiv.attr("v-for", "ctrl in ctrls");
        fltDiv.attr("v-if", "ctrl.class=='" + className + "'");
        //fltDiv.attr(":key", "ctrl.id");
        //fltDiv.attr("v-bind:caption", "ctrl.caption");
        //fltDiv.attr("v-bind:data_field", "ctrl.data_field");
        //fltDiv.attr("v-bind:filter_value", "ctrl.filter_value");
        //fltDiv.attr("v-bind:left", "ctrl.left");
        //fltDiv.attr("v-bind:top", "ctrl.top");
        //fltDiv.attr("v-bind:width", "ctrl.width");
        //fltDiv.attr("v-bind:height", "ctrl.height");
        //fltDiv.attr("v-bind:options", "ctrl.options");
        fltDiv.attr("v-bind:ctrl", "ctrl");
        fltDiv.attr("v-bind:id", "GetId()");
        parentObj.append(fltDiv);
    }
    $.fn.filterForm = function (G) {
        idGenerator = G;
        initVueDivForClass("fltdiv", "textbox", this);
        initVueDivForClass("fltsel", "combobox", this);
        initVueDivForClass("fltdate", "datepick", this);
    };
})(jQuery);
