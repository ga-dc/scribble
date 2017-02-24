
$(document).scroll(function(){
  if($(this).scrollTop() > 10) {
    $("header").css({"height" : "0px"});
    $("nav").css({"top" : "0px"})
    $(".hidden-logo").css({"opacity" : 1})
  } else {
    $("header").css({"height" : "200px"});
    $("nav").css({"top" : "200px"})
    $(".hidden-logo").css({"opacity" : 0})
  }
});

$(document).ready(function() {

  $("#comment-click").click(function(){
    $(".comment-form").toggleClass("hide");

  });
});
