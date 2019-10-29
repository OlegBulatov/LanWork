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
                "action": function (data) {
                    var inst = $.jstree.reference(data.reference),
                        obj = inst.get_node(data.reference);
                    InsertNode(inst, obj);
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
    xhr.open('POST', '/WIB/RemoveNode', false);
    xhr.send(formRemove);
}


function GetHtml(id, idPostfix) {
    var currentNodeUrl = '/WIB/GetHtml?nodeId=' + id;
    if (idPostfix)
        currentNodeUrl += '&idPostfix=' + idPostfix;
    xhr = new XMLHttpRequest();
    xhr.open('GET', currentNodeUrl, false);
    xhr.send();
    return xhr.responseText;
}



function RenameNode(id, text) {
    var formRename = new FormData();
    formRename.append('nodeId', id);
    formRename.append('name', text);
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WIB/RenameNode', false);
    xhr.send(formRename);
}

function EditNode(obj, obj_text) {
    var instance = $('#dersa').jstree(true);
    instance.edit(obj, obj_text, function (obj, tmp, nv, cancel) { return obj });
}

function InsertNode(inst, obj, nodeText) {
    var new_id = inst.create_node(obj, null, 'last');
    var new_node = inst.get_node(new_id);
    inst.set_icon(new_id, "BrowseForm");
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
    xhr = new XMLHttpRequest();
    xhr.open('POST', '/WIB/AddNode', false);
    xhr.send(formCreateNode);
}

