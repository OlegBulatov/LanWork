Vue.component('enabler', {
    data: function(){
        return { evName: 'change', _value: false };
    },
    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: '-20px',
                top: '20px',
            }
        },
        value: {
            get: function () {
                return this._value;
            },
            set: function (newVal) {
                this._value = newVal;
            }
        }
    },
    props: ['ctrl'],
    template: '<div v-bind:style="styleD"><input type="checkbox" v-model:checked="value" v-model:value="ctrl.enabled" v-on:change="$emit(evName, $event.target.checked)"></div>'
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
    },
    valuable: function () {
        return !this.ctrl.enablable || this.ctrl.enabled;
    }
},
props: ['id','ctrl'],

    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div><input type="text" v-bind:readonly="!valuable" v-bind:style="styleI" v-model="ctrl.filter_value" /><enabler v-bind:ctrl="ctrl" v-if="ctrl.enablable"></enabler></div>'
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
        },
        valuable: function () {
            return !this.ctrl.enablable || this.ctrl.enabled;
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
    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div><select v-bind:disabled="!valuable" v-on:keydown="ProcessKey" v-bind:style="styleI" v-model="ctrl.filter_value" name="ftype"><option v-for="opt in ctrl.options" v-bind:value="opt.value">{{ opt.text }}</option></select><enabler v-bind:ctrl="ctrl" v-if="ctrl.enablable"></enabler></div>'
});

Vue.component('fltdate', {
    mounted: function () {
        var self = this;
        $('#' + this.id).jqxDateTimeInput({ value: null, width: this.styleI.width, height: this.styleI.height, disabled: !this.valuable });
        $('#' + this.id).on('change', function (event) {
            self.ctrl.filter_value = event.target.value;
        }); 
    },
    methods: {
        setEnabled(val) {
            $('#' + this.id).jqxDateTimeInput({ disabled: !val });
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
                height: this.ctrl.height + 'px'
            }
        },
        valuable: function () {
            return !this.ctrl.enablable || this.ctrl.enabled;
        }
    },
    props: ['id','ctrl'],
    template: '<div v-bind:style="styleD"><div style="color:black;font-size:10pt;">{{ ctrl.caption ? ctrl.caption : ctrl.data_field }}</div><input v-model="ctrl.filter_value" v-bind:id="id" v-bind:style="styleI" type="text"><enabler v-bind:ctrl="ctrl" v-if="ctrl.enablable" v-on:change="setEnabled($event)"></enabler></div>'
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
    if (filterModel && filterModel.length) {

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
            computed: {
                minFormHeight: function () {
                    let h = 0;
                    this.ctrls.forEach(function (item) {
                        let Hi = item.top + item.height + 25;
                        if (h < Hi)
                            h = Hi;
                    });
                    return h;
                }
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
                        if (item.ctrl.filter_value && item.valuable)
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
    }
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
