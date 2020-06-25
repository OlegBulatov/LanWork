Vue.component('enabler', {
    data: function(){
        return { _value: false };
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
    template: '<div v-bind:style="styleD"><input type="checkbox" v-model:checked="value" v-model:value="ctrl.enabled" v-on:change="$emit(\'change\', $event.target.checked)"></div>'
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
        $('#' + this.id).jqxDateTimeInput({ formatString: 'yyyy-MM-dd', value: null, width: this.styleI.width, height: this.styleI.height, disabled: !this.valuable });
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
                        if (item.ctrl.filter_value && item.valuable) {
                            result.push({
                                Name: item.ctrl.data_field,
                                Predicate: item.ctrl.predicate ? item.ctrl.predicate : '=',
                                Value: item.ctrl.filter_value
                            });
                        }
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
