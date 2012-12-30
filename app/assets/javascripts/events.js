
$(document).ready(function() {
  var $show = true;
  $("#helpbutton").click(function() {
    if ($show) {
      $("#help").hide("swing");
      $show = false;
      $("#helpbutton").text("Show help");
    }
    else {
      $("#help").show("swing");
      $show = true;
      $("#helpbutton").text("Hide help");
    }
  });
});
