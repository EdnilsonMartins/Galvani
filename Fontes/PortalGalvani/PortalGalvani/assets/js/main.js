

$(document).ready(function () {

/*Monitora a aparição da barra do google*/
$('body').bind('DOMSubtreeModified', function() {
    if($g_bar == 0)
    {
        if($('.skiptranslate').length)
        {
            $g_bar = 1;
            console.log("existe");
            checkIfTranslated();
        }
    }
});

   //Altera menu para posição fixa no topo do site
    var nav = $('.navContainer');
    var courtain = $('.courtain');    
    $(window).scroll(function () {
        if ($(this).scrollTop() > 90) {            
            courtain.fadeIn("fast");  
            nav.addClass("fixedNav");     
            $("#fillWrapper").show();                 
        } else {                  
            $("#fillWrapper").hide();      
            nav.removeClass("fixedNav");
            courtain.fadeOut("fast");            
        }
    }); 

    function trocaBannerIdioma(idioma) {
        var pagina = $("section#main").data("pagebanner");        
        switch(idioma) {
            case "pt": { 
                $("header#header").attr("class", "pt");
            } 
            break;
            case "en": {  
                $("header#header").attr("class", "en");
            } 
            break;
            case "es": {  
               $("header#header").attr("class", "es");
            } 
            break;
            default: break;                
        }
    }
	
	function traduzSite(idioma)
	{
		$.ajax({
		  url: base_url() + "traduzir/" + idioma,
		  context: document.body
		}).done(function() {
		   location.reload(); 
		});		
	}
	
    $("#bandeiraBrasil").click(function(){
        //Volta tradução da página para estado original do carregamento em pt-br
        //$('.goog-te-banner-frame:first').contents().find("[id*='restore']").trigger("click");        
        //trocaBannerIdioma("pt");
		
		traduzSite("ptbr");
    });
    $("#bandeiraUsa").click(function() {
        //trocaBannerIdioma("en");
		traduzSite("eng");
    });
    $("#bandeiraEspanha").click(function() {
        //trocaBannerIdioma("es");
		traduzSite("esp");
    });
	
    

    $g_bar = 0;
    $idioma = "";
    var $timerCheck = "";

    /*Checa qual tradução foi selecionada*/
    /*var checkIfTranslated = function () {   
        var check = function () {

            //Se ja carregou a tradução
            if(!$('.goog-te-banner-frame:first').contents().find("[id*='progressSection']").is("visible"))
            {            
                //Idioma atual
                $idioma = ($('.goog-te-banner-frame:first').contents().find("[id*='finishTargetLang']").find(".goog-te-menu-value span").text());

                if($idioma == "") trocaBannerIdioma("pt");
                if($idioma == "inglês") trocaBannerIdioma("en");
                if($idioma == "espanhol") trocaBannerIdioma("es");            

                clearInterval($timerCheck);
            }

        };
        $timerCheck = setInterval(check, 2000);
    };*/

    
    //MASCARAS
    try
    {
      $('.mask-uf').mask('SS', {clearIfNotMatch: true});
      $(".mask-data").mask("00/00/0000");
      $('.mask-money').mask('000.000.000.000.000,00', {reverse: true});
      //$('.sp_celphones').mask(SPMaskBehavior, spOptions);
      $('.sp_celphones').mask('(00) 0000-00009');
    }catch (e){
      console.log(e.message);
    }

    /*  
    * Home 
    */
    //Ajusta posicionamento do formulário de "Contato Rápido"
    if($("section#main").data("pagebanner") == "home") {
        $("#posContatoRapido").addClass("posContatoRapido");
    }

    //Mouse hover/out das imagens da seção 'Matéria Prima'
    $("#materiaPrima article").hover(function () {
        $(this).addClass("materiaPrimaOver");
    }, function () {
        $(this).removeClass("materiaPrimaOver");
    });
    //Inicializa plugin Custom Select 
    if ($('#contatoRapido #assunto').length > 0) {
        $('#contatoRapido #assunto').customSelect();
    }
    //Bloqueia entrada de letras no campo telefone
    /*$('input#telefone').keypress(function(e) {
        if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            return false;
        }
    });*/
    //Trata placeholder dos formulários no IE8
    if($("html").hasClass('lt-ie10')) {
        var iptNome =  $("input#nome"),
            iptCidade = $("input#cidade"),
            iptTelefone = $("input#telefone");

        if(iptNome.length > 0) {
            iptNome.val("NOME");
            iptNome.focus(function(){
                if(iptNome.val() == "NOME")
                    iptNome.val("");
            });
            iptNome.blur(function(){
                if(iptNome.val() == "")
                    iptNome.val("NOME");
            });
        }
        if(iptCidade.length > 0) {
            iptCidade.val("CIDADE");
            iptCidade.focus(function(){
                if(iptCidade.val() == "CIDADE")
                    iptCidade.val("");
            });
            iptCidade.blur(function(){
                if(iptCidade.val() == "")
                    iptCidade.val("CIDADE");
            });
        }
        if(iptTelefone.length > 0) {
            iptTelefone.val("TELEFONE");
            iptTelefone.focus(function(){
                if(iptTelefone.val() == "TELEFONE")
                    iptTelefone.val("");
            });
            iptTelefone.blur(function(){
                if(iptTelefone.val() == "")
                    iptTelefone.val("TELEFONE");
            });
        }        
    }


    /*     
    * Obras 
    */
    //Define a largura do div interno da seção de fotos horizontal
    if ($(".conteudoObras .scroll-pane ul").length > 0) {
        $(".conteudoObras .scroll-pane ul").css("width", ($(".scroll-pane ul li").length * 158) + "px");
        $('.conteudoObras .scroll-pane').jScrollPane().css("visibility", "visible");
    }    

    /*  
    * Asfalto 
    */
    //Define a largura do div interno da seção de fotos horizontal
    if ($(".conteudoAsfalto .scroll-pane ul").length > 0) {
        $(".conteudoAsfalto .scroll-pane ul").css("width", ($(".scroll-pane ul li").length * 158) + "px");
        $('.conteudoAsfalto .scroll-pane').jScrollPane().css("visibility", "visible");
    }

    /*  
    * Contato 
    */
    //Inicializa plugin Custom Select 
    if ($('#formContato #assunto').length > 0) {
        $('#formContato #assunto').customSelect();
    }
    //Abre caixa de diálogo input file    
    $("#main #formTrabalheConosco .customFileInput .inputFileMask").click(function () {        
        $(".customFileInput input[type='file']").trigger("click");        
    });

    $(".ancoraTrabalheConosco").click(function(){
        $('html, body').animate({
            scrollTop: $("#formTrabalheConosco").offset().top - 130
        }, 1000);
    });
    
    
    /*
     * Quem Somos
    */
    $("#menuQuemSomos li a.menu_a").click(function () {
        $("#menuQuemSomos li a").removeClass("menuAtivo");
        $(this).addClass("menuAtivo");

        var idElement = $(this).attr("id");
        var el = idElement.substring(4);
        
        $(".engenhariaQuemSomos > .sec_cont").fadeOut("slow");
        $(".conteudo" + el).fadeIn("medium");
    });

    //Escolhe um ano na linha do tempo pra exibir informações correspondentes
    $(".navegacaoLinhaTempo nav a").click(function () {       
        var anoEscolhido = $(this).text();
        if ($(this).hasClass("anoDuplo")) {
            var str = anoEscolhido.split(" ");
            anoEscolhido = str[0] + "-" + str[2];
        }
        $(".navegacaoLinhaTempo nav a").removeClass("anoAtivo");
        $(this).addClass("anoAtivo");
        $(".anoConteudoLinhaDoTempo").hide();
        $(".conteudoLinhaDoTempo .anoConteudoLinhaDoTempo").each(function (index, value) {
            if ($(this).children("time").attr("datetime") == anoEscolhido) {
                $(this).fadeIn("slow");
            }
        });
    });

    //Mouse Over Elipses
    $(".conteudoMissaoVisaoValores ul li").hover(function(){
        $(this).addClass("hover");
    }, function(){
        $(this).removeClass("hover");
    });

});

$(window).load(function () {    
    /*  
    * Home 
    */
    // Video
    if (Modernizr.video) {
        var video = document.getElementById("video");
        var muteButton = $("#mute");

        // Event listener for the mute button
        muteButton.click(function() {
            if (video.muted == false) {
                video.muted = true;
                // Update the button text
                muteButton.attr("class", "iconUnMute")
            } else {
                video.muted = false;

                // Update the button text
                muteButton.attr("class", "iconMute")
            }
        });
    } else {
        $("#mute, #videoGalvani").remove();
    }

    /*  
    * Contato 
    */
    //Inicializa API Google Maps
    function initialize() {
        var latlng = new google.maps.LatLng(-22.767743, -47.162908);

        var myOptions = {
            zoom: 17,
            center: latlng,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

        latlng_galvani = new google.maps.LatLng(-22.768243, -47.162908);
        var image_marker = "assets/img/icones/marker.png";

        var marker_galvani = new google.maps.Marker({
            position: latlng_galvani,
            map: map,
            icon: image_marker,
            title: "Galvani Engenharia"
        });
        var content_info_window_galvani = '<div style="width: 220px; line-height: 150%; font-size: 12px;">' +
                                           '<p style="font-weight: bold;">Galvani Engenharia</p>' +
                                           '<p>Estrada Municipal da Fazenda São Bento, Km 02, Paulínia / SP - Cep 13140-000</p>' +
                                           '<p style="font-weight: bold;">Tel. (19) 3844-9900</p>' +
                                           '</div>';

        var info_window_galvani = new google.maps.InfoWindow({ content: content_info_window_galvani, maxWidth: 220 });

        google.maps.event.addListener(marker_galvani, "click", function () {
            info_window_galvani.open(map, marker_galvani)
        });

        info_window_galvani.open(map, marker_galvani);
    }

    if ($('#map_canvas').length > 0) {
        initialize();
    }
});


