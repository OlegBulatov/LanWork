Vue.component('wib_editor', {
	mounted: function () {
		this.$root.wibEditor = this;
		var vueInstance = this;//������ ��� ������ initContent this ����� ���������� ��� �� ������ ������ (jqxWindow)
		this.textEditorWindow.jqxWindow({
			autoOpen: false, width: 500, position: 'bottom, center', height: 400, maxWidth: 800,
			resizable: true, isModal: true,
			okButton: this.okButton, cancelButton: this.cancelButton,
			initContent: function () {
				vueInstance.textEditor.jqxEditor({
					height: "90%",
					width: '100%'
				});
				vueInstance.textEditor.val(vueInstance.edited_note ? vueInstance.edited_note.text : "");
				vueInstance.okButton.jqxButton({
					width: '65px',
					theme: 'energyblue'
				});
				vueInstance.cancelButton.jqxButton({
					width: '65px',
					theme: 'energyblue'
				});
				vueInstance.okButton.focus();
			}
		});

		this.textEditorWindow.on('close', this.CloseEditorWindow);

	},
	data: function () {
		return {
			edited_note: undefined,
		};
	},
	computed: {
		displayedStyle: function () {
			return {
				zIndex: 300,
				position: 'absolute',
				display: this.selected_note ? 'block' : 'none',
				left: this.selected_note ? this.selected_note.left + 'px' : '200px',
				top: this.selected_note ? (this.selected_note.top + this.selected_note.height) + 'px' : '200px'
			}

		},
		cancelButton: function () {
			return $('#x_cancel');
		},
		textEditorWindow: function () {
			return $('#x_window');

		},
		textEditor: function () {
			return $('#x_editor');

		},
		okButton: function () {
			return $('#x_ok');

		},
	},
	methods: {
		CloseEditorWindow: function (event) {
			if (event.args.dialogResult.OK) {
				this.edited_note.text = this.textEditor.val();
			}

		},
		Edit: function (_selection) {
			if (this.selected_note)
				_selection = this.selected_note;
			if (!_selection)
				alert('nothing to edit');
			this.edited_note = _selection;
			this.textEditor.jqxEditor('val', _selection.text);
			this.textEditorWindow.jqxWindow('show');
		},
	},
	props: ['selected_note'],
	template: '<div><div id="x_window" style="display:none"><div>jqxEditor</div><div><div id="x_editor"></div><div><input type="button" id="x_ok" value="OK" style="margin-right: 10px"/><input type="button" id="x_cancel" value="Cancel"/></div></div></div><button v-on:click="Edit" v-bind:style="displayedStyle">Edit</button></div>'
});

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
				left: this.left + 'px',
				top: this.top + 'px',
			}

		},
	},
	methods: {
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
			this.__vue__.$root.SetNothingSelected();
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
	  width: (this.collapsed? 20 : this.width) + 'px',
	  height: (this.collapsed ? 20 : this.height) + 'px',
      left: this.left + 'px',
      top: this.top + 'px'
    }
		},
		marker: function () {
			return this.collapsed? "+" : "-";
		}
	},
	methods: {
		Locate(e) {
			e.preventDefault();
			e.stopPropagation();
			this.$root.LocateText(this.id);
		},
		Edit(e) {
			e.preventDefault();
			e.stopPropagation();
			this.$root.EditText();
		},
		ToggleCollapsed(e) {
			e.preventDefault();
			e.stopPropagation();
			this.collapsed = !this.collapsed;
		},
		SetText(txt) {
			this.text = txt;
		}
	},
	props: ['id','width','height','text','top','left','collapsed'],
	template: '<div v-on:dblclick="Edit" v-on:click="Locate" v-bind:id="id" v-bind:style="displayStyle"><div style="position:absolute;left:10px;top:10px;"><span v-html="this.text"></span></div><div style="position:absolute;left:0px;top:0px;width:10px;height:10px;border:1px solid black;"><div v-on:click="ToggleCollapsed" style="position:absolute;top:-4px;" v-bind:title="this.text">{{this.marker}}</div></div></div>'
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

		var wib_editorComponent = $("<wib_editor>");
		wib_editorComponent.attr("v-bind:selected_note", "selected_note");
		this.append(wib_editorComponent);

		var pictureContainer = $("<div>");
		pictureContainer.attr("v-bind:style", "displayStyle");
		this.append(pictureContainer);


		return new Vue({
			el: this.selector,
			updated: function () {
				$('#cmenu').hide();
				$('#cmenutxt').hide();

			},
			computed: {
				displayStyle: function () {
					return {
						marginTop: "20px",
						width: "100%",
						height: "100%",
						backgroundImage: this.backgroundImage,
						backgroundRepeat: "no-repeat"
					}

				},
			},
			data: {
				backgroundImage: "linear- gradient(white, gray)",
				treeCallback: undefined,
				selected_note: undefined,
				wibEditor: undefined,
				backgroundImageIsUrl: false,
				texts: [],
				buttons: [],
			},
			methods: {
				SetButtonsEdited: function (is_edit) {
					this.buttons.forEach(function (item) {
						item.draggable = is_edit;
					});
					this.$forceUpdate();

				},
				SetButtons: function (btns) {
					this.buttons = btns;
				},
				ButtonById: function (btnId) {
					for (i = 0; i < this.buttons.length; i++) {
						if (this.buttons[i].Id == btnId)
							return this.buttons[i];
					}
					return undefined;

				},
				ButtonClick: function (targetId) {
					if (this.treeCallback)
						this.treeCallback(targetId);

				},
				Edit: function () {
					this.SetButtonsEdited(true);

				},
				Post: function () {
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
				LocateText: function (id) {
					this.selected_note = this.TextById(id);
				},
				TextById: function (txtId) {
					for (i = 0; i < this.texts.length; i++) {
						if (this.texts[i].id == txtId)
							return this.texts[i];
					}
					return undefined;

				},
				AddButton: function (caption, targetNodeID = "") {
					var btnLeft = 100;
					var btnTop = 200;
					var btnId = addButton(caption, btnLeft, btnTop, targetNodeID);
					this.buttons.push({ Id: btnId, Caption: caption, Left: btnLeft, Top: btnTop });

				},
				SetTexts: function (texts) {
					this.texts = texts;

				},
				AddText: function (txt) {
					var noteLeft = 100;
					var noteTop = 100;
					var noteWidth = 100;
					var noteHeight = 100;
					var noteId = addNote(txt, noteLeft, noteTop, noteWidth, noteHeight);
					this.texts.push({ id: noteId, text: txt, left: noteLeft, top: noteTop, width: noteWidth, height: noteHeight });

				},
				SetText: function (txt) {
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
				SetTextCoords: function (noteId, left, top) {
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
				SetTextGeometry: function (noteId, width, height) {
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

				},
				SetPicture: function (pict, isNotUrl) {
					this.backgroundImage = isNotUrl ? pict : "url('" + pict + "')";
					this.backgroundImageIsUrl = !isNotUrl;

				},
				SetSelected(id) {
					this.selected_note = this.TextById(id);
				},
				SetNothingSelected() {
					this.selected_note = undefined;
				},
				EditText(id) {
					if (this.wibEditor) {
						this.wibEditor.Edit(this.TextById(id));
					}
					else
						alert('editor is not defined');
					this.SetNothingSelected();
				},
			},
		});
	}
})(jQuery);
