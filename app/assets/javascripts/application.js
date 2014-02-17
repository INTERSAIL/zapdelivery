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
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.it


$(document).ready(function(){
    // MEtte attivo il bottone della sezione corrente
    nome_classe = $('body').attr('class');
    $('#btn_'+nome_classe).parent().addClass("active");


   /* $(window).resize(function() {
        if(this.resizeTO) clearTimeout(this.resizeTO);
        this.resizeTO = setTimeout(function() {
            $(this).trigger('windowResize');
        }, 500);
    });


    $(window).on('windowResize', function() {

        var contenitore =  $("#fullScreenModal").parent();

        if(contenitore.length > 0) {
            var altezzaFinestra =  $(window).height();
            var larghezzaFinestra =  $(window).width();
            console.log("Altezza totale: " + altezzaFinestra);

            contenitore.css(
                {
                    "height": (altezzaFinestra - 200)+"px",
                    "width": (larghezzaFinestra - 100)+"px"
                });
            contenitore.parent().css(
                {
                    "height": (altezzaFinestra - 50)+"px",
                    "width": (larghezzaFinestra - 50)+"px"
                });
            contenitore.parent().addClass('fullScreen');

           *//* contenitore.css(
            {
                "height": (altezzaFinestra - 200)+"px",
                "width": (larghezzaFinestra - 200)+"px",
                "max-width": "0"
            });
            contenitore.parent().css(
            {
                "height": (altezzaFinestra - 50)+"px",
                "width": (larghezzaFinestra - 50)+"px",
                "left": "25px",
                "top":"25px",
                "margin-left": "0",
                "margin-top":"0"
            });  *//*

        } else {

            contenitore =    $(".modal-body");

            contenitore.attr(
                {
                    "height": "",
                    "width": ""
                });
            contenitore.parent().css(
                {
                    "height": "",
                    "width": ""
                });
            contenitore.parent().removeClass('fullScreen');
        }

    });*/

});