Vue.component('wib_menu_item', {
	//data is absent

	//computed is absent

	//methods is absent

	props: ['item'],
	template: '<li><a href="#" v-on:click="item.click">{{item.caption}}</a></li>'
});

Vue.component('wib_menu', {
	mounted: function () {
		this.$root.wib_menu = this;

	},
	data: function () {
		return {
			left: undefined,
			top: undefined,
			items: [],
			height: undefined,
			display: "none",
			width: undefined,
		};
	},
	computed: {
		displayStyle: function () {
			return {
				position: "fixed",
				background: "white",
				left: this.left + "px",
				top: this.top + "px",
				width: this.width + "px",
				height: this.height + "px",
				zIndex: 400,
				border: "1px solid black",
				display: this.display,
			}

		},
	},
	methods: {
		hide: function () {
			this.display = "none";
		},
		show: function (items, left, top, width, height) {
			this.items = items;
			this.left = left;
			this.top = top;
			this.width = width;
			this.height = height;
			this.display = "block";
		},
	},
	props: [],
	template: '<div id="wib-menu" v-bind:style="displayStyle"><ul><wib_menu_item v-for="item in items" v-bind:item="item"></wib_menu_item></ul></div>'
});


Vue.component('wib_editor', {
	mounted: function () {
		this.$root.wib_editor = this;
		var vueInstance = this;//потому что внутри initContent this будет показывать уже на другой объект (jqxWindow)
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
				this.$root.PostText(this.edited_note);
			}
		},
		Edit: function (note) {
			this.edited_note = note;//запомним, чтобы потом положить сюда отредактированный текст
			this.textEditor.jqxEditor('val', note.text);
			this.textEditorWindow.jqxWindow('show');

		},
	},
	props: [],
	template: '<div><div id="x_window" style="display:none"><div>jqxEditor</div><div><div id="x_editor"></div><div><input type="button" id="x_ok" value="OK" style="margin-right: 10px"/><input type="button" id="x_cancel" value="Cancel"/></div></div></div></div>'
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
			e.preventDefault();
			//$('#cmenutxt').css("left", e.pageX);
			//$('#cmenutxt').css("top", e.pageY);
			//$('#cmenutxt').attr("txt_id", e.currentTarget.id);
			//$('#cmenutxt').show();
			if (this.__vue__ && this.__vue__.$root) {
				var txtId = e.currentTarget.id;
				var vueInst = this.__vue__.$root;
				var items = [{ caption: "Редактировать", click: function (e) { vueInst.EditText(txtId); vueInst.wib_menu.hide(); } }, {
					caption: "Удалить", click: function (e) { dropText(txtId); vueInst.wib_menu.hide();} }];
				this.__vue__.$root.wib_menu.show(items, e.pageX, e.pageY, 160, 40);
			}

		});

	},
	data: function () {
		return {
			collapsed: false,
		};
	},
	computed: {
		marker: function () {
			return this.collapsed ? "+" : "-";

		},
		displayStyle: function () {
			return {
				border: '2px dotted black',
				position: 'absolute',
				overflowX: "hidden",
				overflowY: "hidden",
				zIndex: 200,
				background: '#FFC0FF',
				color: 'black',
				width: (this.collapsed ? 20 : this.width) + 'px',
				height: (this.collapsed ? 20 : this.height) + 'px',
				left: this.left + 'px',
				top: this.top + 'px'
			}

		},
	},
	methods: {
		ToggleCollapsed: function (e) {
			e.preventDefault();
			e.stopPropagation();
			this.collapsed = !this.collapsed;

		},
		Edit: function (e) {
			e.preventDefault();
			this.$root.EditText(this.id);

		},
	},
	props: ['width', 'height', 'id', 'top', 'text', 'left'],
	template: '<div v-on:dblclick="Edit" v-bind:id="id" v-bind:style="displayStyle"><div style="position:absolute;left:10px;top:10px;"><span v-html="this.text"></span></div><div style="position:absolute;left:0px;top:0px;width:10px;height:10px;border:1px solid black;"><div v-on:click="ToggleCollapsed" style="position:absolute;top:-4px;" v-bind:title="this.text">{{this.marker}}</div></div></div>'
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
		this.append(wib_editorComponent);

		var wib_menuComponent = $("<wib_menu>");
		this.append(wib_menuComponent);

		var pictureContainer = $("<div>");
		pictureContainer.attr("v-bind:style", "displayStyle");
		this.append(pictureContainer);

		return new Vue({
			el: this.selector,
			updated: function () {
				$('#cmenu').hide();
				$('#cmenutxt').hide();
				this.HideMenu();
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
				backgroundImageIsUrl: false,
				treeCallback: undefined,
				texts: [],
				buttons: [],
				wib_editor: undefined,
				wib_menu: undefined,
			},
			methods: {
				SetButtonsEdited: function (is_edit) {
					this.buttons.forEach(function (item) {
						item.draggable = is_edit;
					});
					this.$forceUpdate();

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
				LoadButtons: function () {
					this.SetButtonsEdited(true);

				},
				PostButtons: function () {
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
				EditText: function (id) {
					if (this.wib_editor) {
						this.wib_editor.Edit(this.TextById(id));
					}
					else
						alert('editor is not defined');

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
				PostText: function (note) {
					var noteForm = new Object();
					noteForm.id = note.id;
					noteForm.text = note.text;
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
				SetPicture: function (pict, isNotUrl) {
					this.backgroundImage = isNotUrl ? pict : "url('" + pict + "')";
					this.backgroundImageIsUrl = !isNotUrl;

				},
				HideMenu() {
					if (this.wib_menu)
						this.wib_menu.hide();
				}
			},
		});
	}
})(jQuery);
