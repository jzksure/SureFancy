$(document).ready(function() {

  /* automatically cycle through the pages */
  var timer = setInterval(function() {
    currentPage = $(".sel_page:checked");
    currentPage.next().click();
  }, 6000);
  
  /* cancel automatic rotation if the user clicks an arrow */
  $(".pss_contr").click(function() {
    clearInterval(timer);
  })

});
