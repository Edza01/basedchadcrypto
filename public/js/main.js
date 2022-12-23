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
        }
    });
}



$(document).ready(function () {
    var $lis = $(".modal-2 li .page-index").hide();
    var size_li = $lis.length;
    var x = 7,
        start = 0;
  
    // Check if a position is stored in local storage
    var storedPos = localStorage.getItem("liPos");
  
    // If a position is stored, use it as the starting position
    if (storedPos !== null) {
      start = parseInt(storedPos);
    }
  
    // Show the appropriate number of elements starting from the stored position
    $lis.slice(start, start + x).show();
  
    $('.next').click(function () {
      if (start + x < size_li) {
        $lis.slice(start, start + x).hide();
        start += x;
        $lis.slice(start, start + x).show();
  
        // Store the new position in local storage
        localStorage.setItem("liPos", start);
      }
    });
    $('.prev').click(function () {
      if (start - x >= 0) {
        $lis.slice(start, start + x).hide();
        start -= x;
        $lis.slice(start, start + x).show();
  
        // Store the new position in local storage
        localStorage.setItem("liPos", start);
      }
    });
  });