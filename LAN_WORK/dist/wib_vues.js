Vue.component('wib_button', {
	mounted: function () {
		$('#' + this.id).draggable({
			stop: function (ev) {
				//if (this.__vue__ && this.__vue__.app_index >= 0) {
				//	appDiagram.ctrls[this.__vue__.app_index].left = $('#' + this.id).position().left;
				//	appDiagram.ctrls[this.__vue__.app_index].top = $('#' + this.id).position().top;
				//}
			}
		});
	},
	computed: {
		divStyle: function () {
			return {
				position: 'absolute',
				zIndex: 150,
				background: 'black',
				color: 'red',
				left: (this.left - 5) + 'px',
				top: (this.top - 5) + 'px',
				width: '5px',
				height: '5px',
				}
		},
			btnStyle: function () {
				return {
					position: 'absolute',
					zIndex: 150,
					background: 'cyan',
					color: 'red',
					left: this.left + 'px',
					top: this.top + 'px',
				}
		},
	},
	props: ['id', 'caption', 'top', 'left'],
		template: '<div v-bind:id="id" v-bind:style="divStyle"><button style="position:absolute; left:5px; top:5px; height: 25px" onclick="alert(\'!\')" >{{this.caption}}</button></div>'
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
		this.append(wib_buttonComponents);

		//var dropContainer = $("<div>");
		//dropContainer.attr("ondrop", "return DragDrop(event);");
		//dropContainer.attr("id", "dropContainer");
		//dropContainer.attr("style", "position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;");
		//this.append(dropContainer);

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
						item.edited = is_edit;
						//item.Caption += "-"; 
					});
					this.$forceUpdate();
				},
				DragOver(ev) {
					ev.preventDefault();
				},
				//DragDrop(ev) {
				//	alert('drop!!!');
				//	//let N = app.entities.length;
				//	//app.entities.push({ displayed_name: 'new div', id: 'n' + (N + 1), app_index: N, left: ev.offsetX - 10, top: ev.offsetY - 10, width: 100, height: 25, is_selected: false, is_visible: true });
				//	//app.relations.push({ entity_a: app.entities[N - 1], entity_b: app.entities[N] });
				//	ev.stopPropagation();
				//	return false;
				//}
			}
		});
	}
})(jQuery);


//function DragDrop(ev) {
//	alert('!!!');
//	//let N = app.entities.length;
//	//app.entities.push({ displayed_name: 'new div', id: 'n' + (N + 1), app_index: N, left: ev.offsetX - 10, top: ev.offsetY - 10, width: 100, height: 25, is_selected: false, is_visible: true });
//	//app.relations.push({ entity_a: app.entities[N - 1], entity_b: app.entities[N] });
//	ev.stopPropagation();
//	return false;
//}
