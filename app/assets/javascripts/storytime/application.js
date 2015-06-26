// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_self
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require leather
//= require jquery-ui/core
//= require jquery-ui/datepicker
//= require jquery-ui/position
//= require jquery-ui/widget
//= require jquery-ui/resizable
//= require jquery.ui.timepicker
//= require jquery.iframe-transport.js
//= require jquery.fileupload.js
//= require codemirror
//= require codemirror/modes/xml
//= require codemirror/modes/htmlmixed
//= require codemirror/modes/overlay
//= require codemirror/addons/fold/xml-fold
//= require codemirror/addons/edit/closetag
//= require codemirror/addons/edit/closebrackets
//= require chosen.jquery
//= require medium-editor.min
//= require fitvids.js
//= require jquery.instagram
//= require_tree .

window.Storytime || (window.Storytime = {})
window.Storytime.Dashboard = {}

document.addEventListener("DOMContentLoaded", function(event) { 
  $("#responsive-videos").fitVids();

$(function() {
  $('.menu_burger').click(function() {
  $('.menu').slideToggle();
  return false;
  });
})

$('.moving-banner').insertAfter('.list_item:nth-child(3)');

});




