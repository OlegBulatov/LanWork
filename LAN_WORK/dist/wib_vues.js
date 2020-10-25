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
		var pictureContainer = $("<div>{{picture_url}}</div>");
		this.append(pictureContainer);

        var buttonComponents = $("<wib_button>");
        buttonComponents.attr("v-for", "button in buttons");
        buttonComponents.attr("v-bind:caption", "button.caption");
        buttonComponents.attr("v-bind:left", "button.left");
        buttonComponents.attr("v-bind:top", "button.top");
        this.append(buttonComponents);
		
        var textComponents = $("<wib_text>");
        textComponents.attr("v-for", "wtext in texts");
        textComponents.attr("v-bind:text", "wtext.text");
        textComponents.attr("v-bind:left", "wtext.left");
        textComponents.attr("v-bind:top", "wtext.top");
        textComponents.attr("v-bind:width", "wtext.width");
        textComponents.attr("v-bind:height", "wtext.height");
        this.append(textComponents);

		return new Vue({
			el: this.selector, 
			data: {
				picture_url: "www.picture.com",
				buttons: [{caption: "Test", left: 200, top: 100}],
				texts: [{text: "Test text just for test", left: 300, top: 200, width: 100, height: 100}]
			},
			methods: {
				SetPicture(purl) {
					this.picture_url = purl;
				}
			}
		});
	}
})(jQuery);

