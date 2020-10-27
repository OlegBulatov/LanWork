Vue.component('wib_button', {
	updated: function () {
		if (this.draggable)
			this.jqButton.draggable('enable');
		else
			this.jqButton.draggable('disable');

	},
	mounted: function () {
		this.jqButton.jqxButton({ theme: 'Light' });
		this.jqButton.click(function (event) {
			var vueButton = this.__vue__.$root.ButtonById(this.__vue__.id);
			if (!vueButton.draggable)
				this.__vue__.$root.ButtonClick(vueButton.targetNodeId);
		});
		this.jqButton.draggable({
			stop: function (ev) {
				if (this.__vue__ && this.__vue__.id) {
					var vueButton = this.__vue__.$root.ButtonById(this.__vue__.id);
					vueButton.Left = $('#' + this.id).position().left;
					vueButton.Top = $('#' + this.id).position().top;
				}
			}
		});
		this.jqButton.draggable('disable');

	},

	computed: {
		jqButton: function () {
			return $('#' + this.id);

		},
		divStyle: function () {
			return {
				border: this.draggable ? '2px solid red' : 'none',
				position: 'absolute',
				zIndex: 150,
				background: 'cyan',
				color: 'red',
				left: this.left + 'px',
				top: this.top + 'px',
			}

		},
	},
	props: ['id', 'caption', 'draggable', 'top', 'left'],
	template: '<div v-bind:id="id" v-bind:style="divStyle">{{this.caption}}</div>'
});

Vue.component('wib_text', {
	mounted: function () {
		$('#' + this.id).draggable();
		$('#' + this.id).resizable();
	},
	computed: {
		displayStyle: function () {
return {
      border: '2px dotted black',
      position: 'absolute',
	  zIndex: 200,
      background: '#FFA0FF',
      color: 'black',
	  width: this.width + 'px',
	  height: this.height + 'px',
      left: this.left + 'px',
      top: this.top + 'px'
    }
		},
	},
	methods: {
		Edit(event) {
			this.$root.editedId = this.id;
			editText(this.text);
		},
		SetText(txt) {
			this.text = txt;
		}
	},
	props: ['id','width','height','text','top','left'],
	template: '<div v-on:dblclick="Edit" v-bind:id="id" v-bind:style="displayStyle"><span v-html="this.text"></span></div>'
});

(function ($) {
	$.fn.wibPage = function () {
//initialization code

		//properties of components:

		var wib_textComponents = $("<wib_text>");
		wib_textComponents.attr("v-for", "v_wib_text in texts");
		wib_textComponents.attr("v-bind:width", "v_wib_text.width");
		wib_textComponents.attr("v-bind:height", "v_wib_text.height");
		wib_textComponents.attr("v-bind:id", "v_wib_text.id");
		wib_textComponents.attr("v-bind:top", "v_wib_text.top");
		wib_textComponents.attr("v-bind:text", "v_wib_text.text");
		wib_textComponents.attr("v-bind:left", "v_wib_text.left");
		this.append(wib_textComponents);

		var wib_buttonComponents = $("<wib_button>");
		wib_buttonComponents.attr("v-for", "v_wib_button in buttons");
		wib_buttonComponents.attr("v-bind:Id", "v_wib_button.Id");
		wib_buttonComponents.attr("v-bind:Caption", "v_wib_button.Caption");
		wib_buttonComponents.attr("v-bind:draggable", "v_wib_button.draggable");
		wib_buttonComponents.attr("v-bind:Top", "v_wib_button.Top");
		wib_buttonComponents.attr("v-bind:Left", "v_wib_button.Left");
		this.append(wib_buttonComponents);

		var pictureContainer = $("<div>");
		pictureContainer.attr("v-bind:style", "displayStyle");
		this.append(pictureContainer);

		return new Vue({
			el: this.selector, 
			data: {
				treeCallback: undefined,
				editedId: undefined,
				backgroundImage: "url('/user_resources/lanitadmin/5f7293b9-f9b0-4804-81b9-92a5e9c50507.png')",
				buttons: [],
				texts: []
			},
			computed: {
				displayStyle: function () {
					return {
						width: "100%",
						height: "100%",
						backgroundImage: this.backgroundImage,
						backgroundRepeat: "no-repeat"
					}
				}
			},
			methods: {
				SetPicture(pict, isNotUrl) {
					this.backgroundImage = isNotUrl? pict : "url('" + pict + "')";
				},
				SetButtons(btns) {
					this.buttons = btns;
				},
				SetButtonsEdited(is_edit) {
					this.buttons.forEach(function(item){
						item.draggable = is_edit;
					});
					this.$forceUpdate();
				},
				ButtonById(btnId) {
					for (i = 0; i < this.buttons.length; i++) {
						if (this.buttons[i].Id == btnId)
							return this.buttons[i];
					}
					return undefined;
				},
				TextById(txtId) {
					for (i = 0; i < this.texts.length; i++) {
						if (this.texts[i].id == txtId)
							return this.texts[i];
					}
					return undefined;
				},
				Edit() {
					this.SetButtonsEdited(true);
				},
				Post() {
					this.SetButtonsEdited(false);
					this.buttons.forEach(function (item) {
						var formSetCoords = new FormData();
						formSetCoords.append('id', item.Id);
						formSetCoords.append('left', item.Left);
						formSetCoords.append('top', item.Top);
						var xhr = new XMLHttpRequest();
						xhr.open('POST', '/WVIB/SetButtonCoords', false);
						xhr.send(formSetCoords);
					});
				},
				ButtonClick(targetId) {
					if (this.treeCallback)
						this.treeCallback(targetId);
				},
				AddText(txt) {
					var nextIndex = this.texts.length;
					this.texts.push({ id: "text" + nextIndex, text: txt, left: 100, top: 100, width: 100, height: 100 });
				},
				SetText(txt) {
					this.TextById(this.editedId).text = txt;
				}
			}
		});
	}
})(jQuery);
