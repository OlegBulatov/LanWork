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
		this.jqButton.contextmenu(function (e) {
			e.preventDefault();
			$('#cmenu').css("left", e.pageX);
			$('#cmenu').css("top", e.pageY);
			$('#cmenu').attr("btn_id", e.currentTarget.id);
			$('#cmenu').attr("caption", e.currentTarget.innerText);
			$('#cmenu').show();
		});

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
				left: (this.left-0) + 'px',
				top: (this.top-0) + 'px',
			}

		},
	},
	props: ['id', 'caption', 'draggable', 'top', 'left'],
	template: '<div v-bind:id="id" v-bind:style="divStyle">{{this.caption}}</div>'
});

Vue.component('wib_text', {
	mounted: function () {
		$('#' + this.id).draggable({
			stop: function (ev) {
				if (this.__vue__ && this.__vue__.$root) {
					var root = this.__vue__.$root;
					var left = $('#' + this.id).position().left;
					var top = $('#' + this.id).position().top;
					root.SetTextCoords(this.id, left, top);
				}
			}
		});
		$('#' + this.id).resizable({
			stop: function (ev) {
				if (this.__vue__ && this.__vue__.$root) {
					var root = this.__vue__.$root;
					let width = $('#' + this.id).width();
					let height = $('#' + this.id).height();
					root.SetTextGeometry(this.id, width, height);
				}
			}
		});
		$('#' + this.id).contextmenu(function (e) {
			e.preventDefault();
			$('#cmenutxt').css("left", e.pageX);
			$('#cmenutxt').css("top", e.pageY);
			$('#cmenutxt').attr("txt_id", e.currentTarget.id);
			$('#cmenutxt').show();
		});

	},
	computed: {
		displayStyle: function () {
return {
      border: '2px dotted black',
	  position: 'absolute',
	  overflowX: "hidden",
	  overflowY: "hidden",
	  zIndex: 200,
      background: '#FFA0FF',
      color: 'black',
	  width: (this.collapsed? 60 : this.width) + 'px',
	  height: (this.collapsed ? 25 : this.height) + 'px',
      left: this.left + 'px',
      top: this.top + 'px'
    }
		},
		marker: function () {
			return this.collapsed? "+" : "-";
		}
	},
	methods: {
		Edit(e) {
			e.preventDefault();
			this.$root.editedId = this.id;
			editText(this.text);
		},
		ToggleCollapsed(event) {
			this.collapsed = !this.collapsed;
		},
		SetText(txt) {
			this.text = txt;
		}
	},
	props: ['id','width','height','text','top','left','collapsed'],
	template: '<div v-on:dblclick="Edit" v-bind:id="id" v-bind:style="displayStyle"><div style="position:absolute;left:10px;top:10px;"><span v-html="this.text"></span></div><div style="position:absolute;left:0px;top:0px;width:10px;height:10px;border:1px solid black;"><div v-on:click="ToggleCollapsed" style="position:absolute;top:-4px;">{{this.marker}}</div></div></div>'
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
			updated: function () {
				$('#cmenu').hide();
				$('#cmenutxt').hide();
			},
			data: {
				treeCallback: undefined,
				editedId: undefined,
				backgroundImage: "linear- gradient(white, gray)",
				buttons: [],
				texts: []
			},
			computed: {
				displayStyle: function () {
					return {
						marginTop:  "20px",
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
				AddButton(caption, targetNodeID="") {
					var btnLeft = 100;
					var btnTop = 200;
					var btnId = addButton(caption, btnLeft, btnTop, targetNodeID);
					this.buttons.push({ Id: btnId, Caption: caption, Left: btnLeft, Top: btnTop });
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
				DeleteButtonById(btnId) {
					var btnForm = new FormData();
					btnForm.append('id', btnId);
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/WVIB/RemoveButton', false);
					xhr.send(btnForm);
					var buttonsJson = GetButtons(selected.id);
					vueApp.SetButtons(JSON.parse(buttonsJson));
					//for (i = 0; i < this.buttons.length; i++) {
					//	if (this.buttons[i].Id == btnId) {
					//		this.buttons.splice(i, 1);
					//		return;
					//	}
					//}
				},
				SetTexts(texts) {
					this.texts = texts;
				},
				TextById(txtId) {
					for (i = 0; i < this.texts.length; i++) {
						if (this.texts[i].id == txtId)
							return this.texts[i];
					}
					return undefined;
				},
				DeleteTextById(txtId) {
					var noteForm = new FormData();
					noteForm.append('id', txtId);
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/WVIB/RemoveNote', false);
					xhr.send(noteForm);
					var textsJson = GetNotes(selected.id);
					vueApp.SetTexts(JSON.parse(textsJson));
					//for (i = 0; i < this.texts.length; i++) {
					//	if (this.texts[i].id == txtId) {
					//		this.texts.splice(i, 1);
					//		return;
					//	}
					//}
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
					var noteLeft = 100;
					var noteTop = 100;
					var noteWidth = 100;
					var noteHeight = 100;
					var noteId = addNote(txt, noteLeft, noteTop, noteWidth, noteHeight);
					this.texts.push({ id: noteId, text: txt, left: noteLeft, top: noteTop, width: noteWidth, height: noteHeight });
				},
				SetText(txt) {
					var note = this.TextById(this.editedId);
					note.text = txt;
					var noteForm = new Object();
					noteForm.id = note.id;
					noteForm.text = txt;
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/WVIB/SetNoteText', false);
					xhr.setRequestHeader('Content-Type', 'application/json');
					xhr.send(JSON.stringify(noteForm));
				},
				SetTextCoords(noteId, left, top) {
					var note = this.TextById(noteId);
					note.left = left;
					note.top = top;
					var noteForm = new FormData();
					noteForm.append('id', noteId);
					noteForm.append('left', left);
					noteForm.append('top', top);
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/WVIB/SetNoteCoords', false);
					xhr.send(noteForm);
				},
				SetTextGeometry(noteId, width, height) {
					var note = this.TextById(noteId);
					note.width = width;
					note.height = height;
					var noteForm = new FormData();
					noteForm.append('id', noteId);
					noteForm.append('width', width);
					noteForm.append('height', height);
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/WVIB/SetNoteGeometry', false);
					xhr.send(noteForm);
				}

			}
		});
	}
})(jQuery);
