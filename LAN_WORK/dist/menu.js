document.oncontextmenu = function () { return false; };
$(document).ready(function () {

    // ������ ��������� ������� ������� ������ ���� ��� ����� ���������:
    $(document).mousedown(function (event) {

        // ������� css ����� selected-html-element � ��������� ���� ��������� �� �������� � ������� ��������� "*":
        $('*').removeClass('selected-html-element');

        // ��������� ������ �� ������ ������ ������ ����:
        if (event.which === 3) {

            MenuItemText = 'Refresh';
            if (event.target.id[0] == '-')
                MenuItemText = 'Find entity B';
            if (event.target.id[0] == "D")
                MenuItemText = 'Edit';
            $('.context-menu').remove();

            // �������� ������� �� ������� ��� �������� ����:
            var target = $(event.target);
            if (!CanShow(event))
                return;
            var displaytext = document.getElementById("displaytext");
            displaytext.value = event.target.id;

            // ��������� ����� selected-html-element ��� �� �������� �������� �� ��� ������ �� �������� (������������� ��� ������������):
            target.addClass('selected-html-element');

            // ������� ����:
            $('<div/>', {
                id: 'contmenu',
                class: 'context-menu' // ����������� ����� ��� css ����� ������������ ����:
            })
            .css({
                left: event.pageX + 'px', // ������ ������� ���� �� X
                top: event.pageY + 'px' // ������ ������� ���� �� Y
            })
            .appendTo('body') // ������������ ���� ���� � body ���������:

            .append( // ��������� ������ ����:
                     $('<ul/>').append('<li><a href="#1" onclick="OnMenuItemClick()">' + MenuItemText + '</li>')
                    )
            .show('fast'); // ���������� ���� � ��������� ����������� �������� jQuery. ��� ��� ����� ������ �������� ��� ����
        }
    });
});
