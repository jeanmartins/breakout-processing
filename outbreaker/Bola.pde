class Bola {
  float posicaoBolaX, posicaoBolaY, aceleracaoX, aceleracaoY, testarColisaoX, testarColisaoY;
  Bola() {
    this.posicaoBolaX = 100;
    this.posicaoBolaY = 100;
    this.aceleracaoX = 5;
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
  void colisao(Jogador outro) {
    testarColisaoX = this.posicaoBolaX;
    testarColisaoY = this.posicaoBolaY;

    if (this.posicaoBolaX < outro.posicaoJogadorX) {
      testarColisaoX = outro.posicaoJogadorX;
    } else if (this.posicaoBolaX > outro.posicaoJogadorX + outro.larguraJogador) {
      testarColisaoX = outro.posicaoJogadorX + outro.larguraJogador;
    }
  }
}
