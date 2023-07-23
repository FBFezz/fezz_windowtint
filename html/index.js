$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }else if(item.type === 'data'){
            $('#tint').text(item.tint)
            $('#tint').css("color", `var(${item.textColor})`)
        }
    })

    document.onkeyup = function (data) {
        if ((data.which == 27) || (data.which == 8)) {
            $.post('http://fezz_windowtint/exit', JSON.stringify({}));
            return
        }
    };
})
