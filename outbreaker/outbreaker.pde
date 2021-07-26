Bola bola = new Bola();
Jogador jogador = new Jogador();
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  bola.desenhaBola();
  bola.moverBola();
  jogador.desenhaMove();
}

class Bola {
  float posicaoBolaX, posicaoBolaY, aceleracaoX, aceleracaoY;
  Bola() {
    this.posicaoBolaX = 100;
    this.posicaoBolaY = 100;
    this.aceleracaoX = random(-5, 5);
    this.aceleracaoY = random(-5, 5);
  }
  void desenhaBola() {
    circle(this.posicaoBolaX, this.posicaoBolaY, 20);
  }
  void moverBola() {
    this.posicaoBolaX+=this.aceleracaoX;
    if (this.posicaoBolaX >= width) {
      this.aceleracaoX = -5;
    }
    if (this.posicaoBolaX <= 0) {
      this.aceleracaoX = 5;
    }
    this.posicaoBolaY+=this.aceleracaoY;
    this.aceleracaoY+= 0.01;
    if (this.posicaoBolaY >= height) {
      this.aceleracaoY = -abs(this.aceleracaoY);
    }
    if (this.posicaoBolaY <= 0) {
      this.aceleracaoY = 5;
    }
  }
}
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
