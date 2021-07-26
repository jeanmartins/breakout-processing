class Jogador {
  float posicaoJogadorX, posicaoJogadorY, larguraJogador, alturaJogador; 
  Jogador() {
    
    this.posicaoJogadorY = 550;
    this.larguraJogador = 100;
    this.alturaJogador = 20;
  }
  void desenhaMove() {
    rect(this.posicaoJogadorX, this.posicaoJogadorY, this.larguraJogador, this.alturaJogador);
     if (keyPressed){
     if( (keyCode == LEFT) && (this.posicaoJogadorX >=0))
       this.posicaoJogadorX-= 7;
    if ( (keyCode == RIGHT) && (this.posicaoJogadorX <=width-larguraJogador))
       this.posicaoJogadorX+=7;
  }
  }
  
}
