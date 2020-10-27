Vue.component('wib_button', {
	mounted: function () {
		//var theButton = $('#' + this.id);
		this.jqButton.jqxButton({ theme: 'Light' });
		this.jqButton.draggable({
			stop: function (ev) {
				if (this.__vue__ && this.__vue__.app_index >= 0) {
					this.__vue__.$root.entities[this.__vue__.app_index].left = $('#' + this.id).position().left;
					this.__vue__.$root.entities[this.__vue__.app_index].top = $('#' + this.id).position().top;
				}
			}
		});
		this.jqButton.draggable('disable');
	},
	updated: function () {
		this.SetEdited(this.draggable);
	},
	computed: {
		divStyle: function () {
			return {
				border: this.draggable? '2px solid red' : 'none',
				position: 'absolute',
				zIndex: 150,
				background: 'cyan',
				color: 'red',
				left: this.left + 'px',
				top: this.top + 'px',
				//width: '100px',
				//height: '25px',
				}
		},
		jqButton: function () {
			return $('#' + this.id);
		}
	},
	methods: {
		SetEdited(isEdit) {
			if (isEdit)
				this.jqButton.draggable('enable');
			else
				this.jqButton.draggable('disable');
		}
	},
	props: ['id', 'caption', 'top', 'left', 'draggable'],
	template: '<div v-bind:id="id" v-bind:style="divStyle">{{this.caption}}</div>'
});

Vue.component('wib_text', {
	mounted: function () {
		$('#' + this.id).draggable();
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
	props: ['id','width','height','text','top','left'],
	template: '<div v-bind:id="id" v-bind:style="displayStyle">{{this.text}}</div>'
});

(function ($) {
	$.fn.wibPage = function () {
//initialization code

		var pictureContainer = $("<div>");
		pictureContainer.attr("v-bind:style", "displayStyle");
		this.append(pictureContainer);
		

		var wib_textComponents = $("<wib_text>");
		wib_textComponents.attr("v-for", "v_wib_text in texts");
		wib_textComponents.attr("v-bind:id", "v_wib_text.id");
		wib_textComponents.attr("v-bind:width", "v_wib_text.width");
		wib_textComponents.attr("v-bind:height", "v_wib_text.height");
		wib_textComponents.attr("v-bind:text", "v_wib_text.text");
		wib_textComponents.attr("v-bind:top", "v_wib_text.top");
		wib_textComponents.attr("v-bind:left", "v_wib_text.left");
		this.append(wib_textComponents);

		var wib_buttonComponents = $("<wib_button>");
		wib_buttonComponents.attr("v-for", "v_wib_button in buttons");
		wib_buttonComponents.attr("v-bind:Id", "v_wib_button.Id");
		wib_buttonComponents.attr("v-bind:Caption", "v_wib_button.Caption");
		wib_buttonComponents.attr("v-bind:Top", "v_wib_button.Top");
		wib_buttonComponents.attr("v-bind:targetNodeId", "v_wib_button.targetNodeId");
		wib_buttonComponents.attr("v-bind:Left", "v_wib_button.Left");
		wib_buttonComponents.attr("v-bind:draggable", "v_wib_button.draggable");
		this.append(wib_buttonComponents);

		return new Vue({
			el: this.selector, 
			data: {
				pictureUrl: "/user_resources/lanitadmin/5f7293b9-f9b0-4804-81b9-92a5e9c50507.png",
				buttons: [],
				texts: [{id: "text1", text: "Test text just for test", left: 300, top: 200, width: 100, height: 100}]
			},
			computed: {
				displayStyle: function () {
					return {
						width: "100%",
						height: "100%",
						backgroundImage: "url('" + this.pictureUrl + "')"
					}
				}
			},
			methods: {
				SetPicture(purl) {
					this.pictureUrl = purl;
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
			}
		});
	}
})(jQuery);
