$(".modal-2 li .page-index").click(function () {
    $(".modal-2 li .page-index").removeClass("active");
    $(this).addClass("active");

    localStorage.ClassName = "active";
    localStorage.CurrentIndex = this.innerHTML;
});

$(document).ready(function () {
    SetClass();
});

function SetClass() {
    var listItems = $(".modal-2 li .page-index");
    listItems.each(function (idx, li) {
        var product = $(li);

        if (localStorage.CurrentIndex == this.innerHTML) {
        product.addClass(localStorage.ClassName);
        console.log(this.innerHTML);
        }
    });
}
