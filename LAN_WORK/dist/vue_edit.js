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
        left: this.left + 'px',
        top: this.top + 'px',
    }
  },
  styleI: function () {
    return {
        width: this.width + 'px',
        height: this.height + 'px',
    }
  }
},
props: ['caption', 'data_field', 'filter_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible'],

template: '<div v-bind:id="id" v-bind:style="styleD"><input type="text"  v-bind:style="styleI" v-model="filter_value" /><div style="position:relative;top:-40px;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div></div>'
});

Vue.component('fltsel', {
    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: this.left + 'px',
                top: this.top + 'px',
            }
        },
        styleI: function () {
            return {
                width: this.width + 'px',
                height: this.height + 'px',
            }
        }
    },
    props: ['caption', 'data_field', 'filter_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible'],
    template: '<div v-bind:id="id" v-bind:style="styleD"><select  v-bind:style="styleI" v-model="filter_value" name="hero"><option value="t1" selected>Che Burashka</option><option value="t2">Gena the crocodile</option><option value="t3">Chapeauclaque</option><option value="t4">Larissa the rat</option></select ></div>'
});

Vue.component('fltdate', {
    mounted: function () {
        console.log(this);
        $('#' + this.id).datepicker({
            buttonImage: "dist/themes/default/Calendar__.png", showOn: "button", buttonImageOnly: true, changeMonth: true, buttonText: "choose date",
            dateFormat: 'dd.mm.yy', onSelect: function () {
                var event = new Event('input');
                this.dispatchEvent(event); } });
    },

    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: this.left + 'px',
                top: this.top + 'px',
            }
        },
        styleI: function () {
            return {
                width: this.width + 'px',
                height: this.height + 'px'
            }
        }
    },
    props: ['caption', 'data_field', 'filter_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible'],
    template: '<div v-bind:style="styleD"><input v-model="filter_value" v-bind:id="id" v-bind:style="styleI" type="text"><div style="position:relative;top:-42px;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div></div>'
});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    

var initEditArray = 
[
        { class: 'textbox', caption: 'Type Name', data_field: 'type_name', filter_value: 'v1', id: 'e1', app_index: 0, left: 20, top: 20, width: 350, height: 25, is_selected: false, is_visible: true },
        { class: 'datepick', caption: null, data_field: 'created_at', filter_value: '', id: 'e2', app_index: 1, left: 20, top: 70, width: 90, height: 25, is_selected: false, is_visible: true },
        { class: 'combobox', caption: 'entity3', data_field: 'f3', filter_value: 't2', id: 'e3', app_index: 2, left: 400, top: 20, width: 160, height: 25, is_selected: false, is_visible: true }
];

function initEdit() {

    objEdit = new Vue({
        el: '#editForm',
        data: {
            selected_index: -1,
            ctrls: initEditArray,
            communicationObj: new Object()
        },
        methods: {
            ProcessKey: function (key, altKey, ctrlKey, shiftKey) {
                if (key == "Control")
                    return;
                console.log(key);
            },
            SetObj: function (obj) {
                for(f in obj)
                    this.communicationObj[f].filter_value = obj[f];
            }
        },
        created: function () {
            var cObj = this.communicationObj;
            this.ctrls.forEach(function (item) {
                cObj[item.data_field] = item;
            });
        }
    });
}

(function ($) {
    function initVueDivForClass(divName, className, parentObj) {
        var fltDiv = $("<" + divName + "></" + divName + ">");
        fltDiv.attr("v-for", "ctrl in ctrls");
        fltDiv.attr("v-if", "ctrl.class=='" + className + "'");
        fltDiv.attr(":key", "ctrl.id");
        fltDiv.attr("v-bind:caption", "ctrl.caption");
        fltDiv.attr("v-bind:data_field", "ctrl.data_field");
        fltDiv.attr("v-bind:filter_value", "ctrl.filter_value");
        fltDiv.attr("v-bind:left", "ctrl.left");
        fltDiv.attr("v-bind:top", "ctrl.top");
        fltDiv.attr("v-bind:width", "ctrl.width");
        fltDiv.attr("v-bind:height", "ctrl.height");
        fltDiv.attr("v-bind:id", "ctrl.id");
        parentObj.append(fltDiv);
    }
    $.fn.editForm = function () {
        initVueDivForClass("fltdiv", "textbox", this);
        initVueDivForClass("fltsel", "combobox", this);
        initVueDivForClass("fltdate", "datepick", this);
    };
})(jQuery);
