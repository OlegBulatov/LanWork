$.jstree.defaults.contextmenu = {
    select_node: true,
    show_at_node: false,
    items: function (o, cb) { // Could be an object directly
        return {
            "rename": {
                "separator_before": false,
                "separator_after": false,
                "label": "Rename",
                "action": function (data) {
                    var inst = $.jstree.reference(data.reference),
                        obj = inst.get_node(data.reference);
                    obj_text = inst.get_text(data.reference);
                    inst.edit(obj, obj_text, function (obj, tmp, nv, cancel) { RenameNode(obj.id, obj.text); });
                }
            },
            "clear": {
                "separator_before": false,
                "separator_after": false,
                "label": "Clear",
                "action": function (data) {
                    if (confirm('Удалить изображение?')) {
                        var inst = $.jstree.reference(data.reference),
                            obj = inst.get_node(data.reference);
                        obj.data = null;
                    }
                }
            },
            "delete": {
                "separator_before": true,
                "icon": false,
                "separator_after": false,
                "_disabled": o.children.length > 0,
                "label": "Delete",
                "action": function (data) {
                    if (confirm('Удалить узел?')) {
                        var inst = $.jstree.reference(data.reference),
                            obj = inst.get_node(data.reference);
                        RemoveNode(obj.id, obj.parent);
                        inst.delete_node(obj);
                    }
                }
            },
            "insert": {
                "separator_before": true,
                "icon": false,
                "separator_after": false,
                "label": "Insert",
                "_disabled": function (data) {
                    var inst = $.jstree.reference(data.reference),
                        obj = inst.get_node(data.reference);
                    if (!obj.icon)
                        return false;
                    if (obj.icon === true)
                        return false;
                    return obj.icon != "Package";
                },                //o.icon != "Package" && !!o.icon,
                "submenu":
                {
                    "insert_package": {
                        "separator_before": false,
                        "icon": false,
                        "separator_after": false,
                        "label": "Package",
                        "action": function (data) {
                            var inst = $.jstree.reference(data.reference),
                                obj = inst.get_node(data.reference);
                            InsertNode(inst, obj, "", "Package");
                        }
                    },
                    "insert_form": {
                        "separator_before": false,
                        "icon": false,
                        "separator_after": false,
                        "label": "Form",
                        "action": function (data) {
                            var inst = $.jstree.reference(data.reference),
                                obj = inst.get_node(data.reference);
                            InsertNode(inst, obj, "", "BrowseForm");
                        }
                    }

                }
            }
        }
    }
}

function RemoveNode(id, parent) {
    var formRemove = new FormData();
    formRemove.append('nodeId', id);
    formRemove.append('parentId', parent);
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/RemoveNode', false);
    xhr.send(formRemove);
}


function RenameNode(id, text) {
    var formRename = new FormData();
    formRename.append('nodeId', id);
    formRename.append('name', text);
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/RenameNode', false);
    xhr.send(formRename);
}

function EditNode(obj, obj_text) {
    var instance = $('#dersa').jstree(true);
    instance.edit(obj, obj_text, function (obj, tmp, nv, cancel) { return obj });
}

function InsertNode(inst, obj, nodeText, icon) {
    var new_id = inst.create_node(obj, null, 'last');
    var new_node = inst.get_node(new_id);
    inst.set_icon(new_id, icon);
    if (nodeText)
        inst.set_text(nodeText);
    else
        inst.edit(new_node, '', function (obj, tmp, nv, cancel) { CreateNodeAtServer(obj) });
    return new_id;
}

function CreateNodeAtServer(obj) {
    var formCreateNode = new FormData();
    formCreateNode.append('parentId', obj.parent);
    formCreateNode.append('nodeId', obj.id);
    formCreateNode.append('text', obj.text);
    formCreateNode.append('icon', obj.icon);
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/AddNode', false);
    xhr.send(formCreateNode);
}

function GetNewNodeId() {
    var instance = $("#modulesTree").jstree(true);
    return InsertNode(instance, instance.get_node(instance.get_selected()[0]), 'screen');
}

function GetSelectedNodeId() {
    var instance = $("#modulesTree").jstree(true);
    return instance.get_selected()[0];
}

function selectNode(nodeId) {
    var instance = $('#modulesTree').jstree(true);
    instance.deselect_all();
    instance.select_node(nodeId);
}

////////////////////////////////////////////////////////////////////////////////////non-tree stuff

function GetHtml(id, idPostfix) {
    var currentNodeUrl = '/WIB/GetHtml?nodeId=' + id;
    if (idPostfix)
        currentNodeUrl += '&idPostfix=' + idPostfix;
    xhr = new XMLHttpRequest();
    xhr.open('GET', currentNodeUrl, false);
    xhr.send();
    return xhr.responseText;
}

function GetButtons(id, idPostfix) {
    var currentNodeUrl = '/WVIB/GetButtons?nodeId=' + id;
    if (idPostfix)
        currentNodeUrl += '&idPostfix=' + idPostfix;
    xhr = new XMLHttpRequest();
    xhr.open('GET', currentNodeUrl, false);
    xhr.send();
    return xhr.responseText;
}

function GetNotes(id) {
    var currentNodeUrl = '/WVIB/GetNotes?nodeId=' + id;
    xhr = new XMLHttpRequest();
    xhr.open('GET', currentNodeUrl, false);
    xhr.send();
    return xhr.responseText;
}

function addNote(txt, noteLeft, noteTop, noteWidth, noteHeight) {
    var formAddNote = new FormData();
    formAddNote.append('nodeId', GetSelectedNodeId());
    formAddNote.append('text', txt);
    formAddNote.append('left', noteLeft);
    formAddNote.append('top', noteTop);
    formAddNote.append('width', noteWidth);
    formAddNote.append('height', noteHeight);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/AddNote', false);
    xhr.send(formAddNote);
    return xhr.responseText;
}
function addButton(caption, btnLeft, btnTop, targetNodeId) {
    var formAddBtn = new FormData();
    formAddBtn.append('nodeId', GetSelectedNodeId());
    formAddBtn.append('caption', caption);
    formAddBtn.append('left', btnLeft);
    formAddBtn.append('top', btnTop);
    formAddBtn.append('targetNodeId', targetNodeId);
    
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/AddButton', false);
    xhr.send(formAddBtn);
    return xhr.responseText;
}

function renameButton(buttonId, exCaption) {
    var buttonCaption = prompt('Новое название кнопки:', exCaption);
    if (buttonCaption) {
        var formRenameButton = new FormData();
        formRenameButton.append('buttonId', buttonId);
        formRenameButton.append('caption', buttonCaption);
        xhr = new XMLHttpRequest();
        xhr.open('POST', '/WVIB/RenameButton', false);
        xhr.send(formRenameButton);
        vueApp.ButtonById(buttonId).Caption = buttonCaption;
    }
}

function setButtonTargetId(buttonId, exTargetId) {
    var btn = vueApp.ButtonById(buttonId);
    if (!exTargetId)
        exTargetId = btn.targetNodeId;
    var buttonTargetId = prompt('Переход на узел:', exTargetId);
    if (buttonTargetId) {
        var formSetButtonTarget = new FormData();
        formSetButtonTarget.append('buttonId', buttonId);
        formSetButtonTarget.append('targetId', buttonTargetId);
        xhr = new XMLHttpRequest();
        xhr.open('POST', '/WVIB/SetButtonTargetId', false);
        xhr.send(formSetButtonTarget);
        btn.targetNodeId = buttonTargetId;
    }
}

function dropButton(id) {
    var btnForm = new FormData();
    btnForm.append('id', id);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/RemoveButton', false);
    xhr.send(btnForm);
    var buttonsJson = GetButtons(GetSelectedNodeId());
    vueApp.SetButtons(JSON.parse(buttonsJson));
}

function editText(id) {
    vueApp.SelectText(id);
    vueApp.EditText(id);
}

function dropText(id) {
    var noteForm = new FormData();
    noteForm.append('id', id);
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/RemoveNote', false);
    xhr.send(noteForm);
    var textsJson = GetNotes(GetSelectedNodeId());
    vueApp.SetTexts(JSON.parse(textsJson));
}

function saveDiagram() {
    var codec = new mxCodec();
    var encXml = codec.encode(Editor.graph.getModel()); 
    var xml = mxUtils.getXml(encXml);
    var dataObj = new Object();
    dataObj.src = null;
    if (vueApp.backgroundImageIsUrl)
        dataObj.src = vueApp.backgroundImage;
    dataObj.xml = xml;
    var body = new Object();
    body.nodeId = GetSelectedNodeId();
    body.nodeData = JSON.stringify(dataObj);
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WVIB/SetNodeData', false);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.send(JSON.stringify(body));
}

function initGraph(xml) {
    if(!Editor)
        createEditor('config/diagrameditor.xml');
    Editor.graph.getModel().beginUpdate();
    try {
        var doc = mxUtils.parseXml(xml);
        var codec = new mxCodec(doc);
        codec.decode(doc.documentElement, Editor.graph.getModel());
    }
    finally {
        Editor.graph.getModel().endUpdate();
    }
}