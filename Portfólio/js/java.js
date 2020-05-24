var tagAlvo = new Array('p'); //pega todas as tags p//
var tamanhos = new Array( '14px','15px','16px','18px','20px','22px','24px' );
var tamanhoInicial = 2;
function mudaTamanho( idAlvo,acao ){
  if (!document.getElementById) return
    var selecionados = null,tamanho = tamanhoInicial,i,j,tagsAlvo;
    tamanho += acao;
  if ( tamanho < 0 ) tamanho = 0;
  if ( tamanho > 6 ) tamanho = 6;
    tamanhoInicial = tamanho;
  if ( !( selecionados = document.getElementById( idAlvo ) ) ) selecionados = document.getElementsByTagName( idAlvo )[ 0 ];
 
  selecionados.style.fontSize = tamanhos[ tamanho ];
 
  for ( i = 0; i < tagAlvo.length; i++ ){
    tagsAlvo = selecionados.getElementsByTagName( tagAlvo[ i ] );
    
    for ( j = 0; j < tagsAlvo.length; j++ ) tagsAlvo[ j ].style.fontSize = tamanhos[ tamanho ];
  }
}
var x=1;
function colorido(){
  if(x==1){
    document.getElementById("text1").style.background= "#222";
    document.getElementById("text1").style.color= "#fff";
    x++;
  }else{
    document.getElementById("text1").style.background= "#fff";
    document.getElementById("text1").style.color= "#222";
    x--;
  }
}