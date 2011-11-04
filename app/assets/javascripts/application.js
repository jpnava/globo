// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

function iniciarCiclo(contenido1){
	 //checar si el objeto contenedor existe
	if(contenido1.length >= 1 ){
		arregloElementos = contenido1.children();
		contenido1.css("position","relative"); 
		arregloElementos.css("display","none");	
		arregloElementos.css("position","absolute");//ocultar elem internos
		$(arregloElementos[0]).css("display","block");
		ciclodeDivs(arregloElementos,0,arregloElementos.length-1);		
		}
}
	
	function ciclodeDivs(arrElem,a,b){
		$(arrElem[a]).fadeTo("slow",1.0); // muestra elemento a 
		$(arrElem[b]).fadeOut("slow"); //oculta elemento b
		if(a>=arrElem.length-1){
			b=arrElem.length-1;
	    a=0;
			}
		else{
			b=a;
	    a=a+1;
			}
	 
	 window.setTimeout(function(){ ciclodeDivs(arrElem,a,b);},5000);	
}