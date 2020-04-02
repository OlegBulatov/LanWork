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
    props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible', 'read_only'],

    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="position:relative;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div><input type="text" :readonly="read_only" v-if="height<=30"  v-bind:style="styleI" v-model="control_value" /><textarea  :readonly="read_only" v-if="height>30"  v-bind:style="styleI" v-model="control_value" /></div>'
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
    props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible', 'options', 'read_only'],
    template: '<div v-bind:id="id" v-bind:style="styleD"><div style="position:relative;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div><select :disabled="read_only" v-bind:style="styleI" v-model="control_value" name="ftype"><option v-for="opt in options" v-bind:value="opt.value">{{ opt.text }}</option></select></div>'
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
    props: ['caption', 'data_field', 'control_value', 'id', 'app_index', 'left', 'top', 'width', 'height', 'is_selected', 'is_visible', 'read_only'],
    template: '<div v-bind:style="styleD"><input v-model="control_value" v-bind:id="GlId()" v-bind:style="styleI" type="text"><div style="position:relative;top:-42px;left:0px;color:black;font-size:10pt;">{{ this.caption ? this.caption : this.data_field }}</div></div>'
});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    

function initEdit(className, initCtrlsArray) {
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
            ctrls: initCtrlsArray,
            is_edit: false,
            is_new: false,
            communicationObj: new Object(),
            mainObj: null
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
            GetObj: function () {
                var obj = new Object();
                var commObj = this.communicationObj;
                this.$children.forEach(function (item) {
                    obj[item.data_field] = item.control_value;
                    if (commObj[item.data_field])
                        commObj[item.data_field].control_value = item.control_value;
                });
                return obj;
            },
            GetId: function () {
                return idGenerator.next().value;
            },
            EnableControls(val) {
                this.ctrls.forEach(function (item) {
                    item.read_only = !val;
                });
            },
            Load() {
                this.is_edit = true;
                this.is_new = false;
                this.EnableControls(true);
                this.$forceUpdate();
            },
            New() {
                this.is_edit = true;
                this.is_new = true;
                for (f in this.communicationObj)
                    this.communicationObj[f].control_value = null;
                this.EnableControls(true);
                this.$forceUpdate();
            },
            Post() {
                if (!this.is_edit)
                    return;
                this.mainObj.Post(this.GetObj());
                this.Cancel();
            },
            Cancel() {
                this.is_edit = false;
                this.is_new = false;
                this.EnableControls(false);
                this.$forceUpdate();
            },
            SetMainObj(obj) {
                this.mainObj = obj;
            },
            destroy: function () {
                this.$destroy();
            }
        },
        created: function () {
            var commObj = this.communicationObj;
            this.ctrls.forEach(function (item) {
                commObj[item.data_field] = item;
            });
            this.EnableControls(false);
        }
    });

    return objEdit;
}

(function ($) {
    function initVueDivForClass(divName, className, parentObj) {
        var edDiv = $("<" + divName + "></" + divName + ">");
        edDiv.attr("v-for", "ctrl in ctrls");
        edDiv.attr("v-if", "ctrl.class=='" + className + "'");
        edDiv.attr(":key", "ctrl.id");
        edDiv.attr("v-bind:caption", "ctrl.caption");
        edDiv.attr("v-bind:data_field", "ctrl.data_field");
        edDiv.attr("v-bind:control_value", "ctrl.control_value");
        edDiv.attr("v-bind:left", "ctrl.left");
        edDiv.attr("v-bind:top", "ctrl.top");
        edDiv.attr("v-bind:width", "ctrl.width");
        edDiv.attr("v-bind:height", "ctrl.height");
        edDiv.attr("v-bind:id", "GetId()");
        edDiv.attr("v-bind:options", "ctrl.options");
        edDiv.attr("v-bind:read_only", "ctrl.read_only");
        parentObj.append(edDiv);
    }
    $.fn.editForm = function () {
        initVueDivForClass("eddiv", "textbox", this);
        initVueDivForClass("edsel", "combobox", this);
        initVueDivForClass("eddate", "datepick", this);
        var okBtn = $('<input type="button" value="OK" v-if="is_edit" v-on:click="Post" style="position:absolute;bottom:10px;">');
        var cancelBtn = $('<input type="button" value="Cancel" v-if="is_edit" v-on:click="Cancel" style="position:absolute;bottom:10px;left:50px">');
        this.append(okBtn);
        this.append(cancelBtn);
    };
})(jQuery);
