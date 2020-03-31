Vue.component('eddiv', {

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
        marginTop: '-15px'
    }
  },
  styleI: function () {
    return {
        width: this.width + 'px',
        height: this.height + 'px',
    }
  }
},
props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible'],

    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="position:relative;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div><input type="text" v-if="height<=30"  v-bind:style="styleI" v-model="control_value" /><textarea v-if="height>30"  v-bind:style="styleI" v-model="control_value" /></div>'
});

Vue.component('edsel', {
    computed: {
        styleD: function () {
            return {
                position: 'absolute',
                left: this.left + 'px',
                top: this.top + 'px',
                marginTop: '-15px'
            }
        },
        styleI: function () {
            return {
                width: this.width + 'px',
                height: this.height + 'px',
            }
        }
    },
    props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible', 'options'],
    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="position:relative;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div><select  v-bind:style="styleI" v-model="control_value" name="ftype"><option v-for="opt in options" v-bind:value="opt.value">{{ opt.text }}</option></select></div>'
});

Vue.component('eddate', {
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
                marginTop: '-15px'
            }
        },
        styleI: function () {
            return {
                width: this.width + 'px',
                height: this.height + 'px'
            }
        }
    },
    props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible'],
    template: '<div v-bind:style="styleD"><input v-model="control_value" v-bind:id="id" v-bind:style="styleI" type="text"><div style="position:relative;top:-42px;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div></div>'
});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    

function initEdit(className, initEditArray) {
    var editDiv = document.getElementById('editForm' + className);
    if(editDiv)
        editDiv.innerHTML = "";
    $('#editForm' + className).editForm();
    //if (objEdit)
    //    objEdit.destroy();
    var objEdit = new Vue({

        el: '#editForm' + className,
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
                for (f in obj) {
                    if (this.communicationObj[f])
                        this.communicationObj[f].control_value = obj[f];
                }
            },
            destroy: function () {
                this.$destroy();
            }
        },
        created: function () {
            var cObj = this.communicationObj;
            this.ctrls.forEach(function (item) {
                cObj[item.data_field] = item;
            });
        }
    });

    return objEdit;
}

(function ($) {
    function initVueDivForClass(divName, className, parentObj) {
        var fltDiv = $("<" + divName + "></" + divName + ">");
        fltDiv.attr("v-for", "ctrl in ctrls");
        fltDiv.attr("v-if", "ctrl.class=='" + className + "'");
        fltDiv.attr(":key", "ctrl.id");
        fltDiv.attr("v-bind:caption", "ctrl.caption");
        fltDiv.attr("v-bind:data_field", "ctrl.data_field");
        fltDiv.attr("v-bind:control_value", "ctrl.control_value");
        fltDiv.attr("v-bind:left", "ctrl.left");
        fltDiv.attr("v-bind:top", "ctrl.top");
        fltDiv.attr("v-bind:width", "ctrl.width");
        fltDiv.attr("v-bind:height", "ctrl.height");
        fltDiv.attr("v-bind:id", "ctrl.id");
        fltDiv.attr("v-bind:options", "ctrl.options");
        parentObj.append(fltDiv);
    }
    $.fn.editForm = function () {
        initVueDivForClass("eddiv", "textbox", this);
        initVueDivForClass("edsel", "combobox", this);
        initVueDivForClass("eddate", "datepick", this);
    };
})(jQuery);
