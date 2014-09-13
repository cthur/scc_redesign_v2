/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/*/

/*
$(document).on('focusin', function(e) {
  if ($(e.target).closest(".mce-window").length) {
    e.stopImmediatePropagation();
}
});*/

jQuery(function() {
  $('#event_directory').dataTable({
    "iDisplayLength": 25
  });
  return {
    sPaginationType: "bootstrap",
    bJQueryUI: true,
    bProcessing: true,
    bServerSide: true,
    sAjaxSource: $('#event_directory').data('source')
  };
});
jQuery(function() {
    $('#event_min').dataTable({
        "iDisplayLength": 5
    });
    return {
        sPaginationType: "bootstrap",
        bJQueryUI: true,
        bProcessing: true,
        bServerSide: true,
        sAjaxSource: $('#event_min').data('source')
    };
});