Vue.component('wib_button', {
	computed: {
		displayStyle: function () {
			return {
				  position: 'absolute',
				  zIndex: 200,
				  background: 'blue',
				  color: 'red',
				  left: this.left + 'px',
				  top: this.top + 'px'
				}
		},
	},
	props: ['caption','top','left'],
	template: '<button onclick="alert(\'!\')" v-bind:style="displayStyle">{{this.caption}}</button>'
});

Vue.component('wib_text', {
	computed: {
		displayStyle: function () {
return {
      position: 'absolute',
	  zIndex: 200,
      background: 'cyan',
      color: 'black',
	  width: this.width + 'px',
	  height: this.height + 'px',
      left: this.left + 'px',
      top: this.top + 'px'
    }
		},
	},
	props: ['width','height','text','top','left'],
	template: '<div v-bind:style="displayStyle">{{this.text}}</div>'
});

(function ($) {
	$.fn.wibPage = function () {
//initialization code
		var pictureContainer = $("<div>");
		pictureContainer.attr("v-bind:style", "displayStyle");
		this.append(pictureContainer);
		

		var wib_textComponents = $("<wib_text>");
		wib_textComponents.attr("v-for", "v_wib_text in texts");
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
		wib_buttonComponents.attr("v-bind:targetNodeId", "v_wib_button.targetNodeId");
		wib_buttonComponents.attr("v-bind:Top", "v_wib_button.Top");
		wib_buttonComponents.attr("v-bind:Left", "v_wib_button.Left");
		this.append(wib_buttonComponents);

		return new Vue({
			el: this.selector, 
			data: {
				pictureUrl: "/user_resources/lanitadmin/5f7293b9-f9b0-4804-81b9-92a5e9c50507.png",
				buttons: [{Caption: "Test", Left: 100, Top: 200}],
				texts: [{text: "Test text just for test", left: 300, top: 200, width: 100, height: 100}]
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
				}
			}
		});
	}
})(jQuery);

