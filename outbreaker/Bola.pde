class Bola {
  float posicaoBolaX, posicaoBolaY, aceleracaoX, aceleracaoY, testarColisaoX, testarColisaoY, distancia, raio;
  Bola() {
    this.posicaoBolaX = 100;
    this.posicaoBolaY = 100;
    this.aceleracaoX = 5;
    this.aceleracaoY = random(-5, 5);
    this.raio = 10;
  }
  void desenhaBola() {
    circle(this.posicaoBolaX, this.posicaoBolaY, this.raio*2);
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

    if (this.posicaoBolaY < outro.posicaoJogadorY) {
      testarColisaoY = outro.posicaoJogadorY;
    } else if (this.posicaoBolaY > outro.posicaoJogadorY + outro.alturaJogador) {
      testarColisaoY =  outro.posicaoJogadorY + outro.alturaJogador;
    }
    this.distancia = sqrt(sq(this.posicaoBolaX - testarColisaoX) + sq(this.posicaoBolaY - testarColisaoY));

    if ( this.distancia <= this.raio) {
      this.aceleracaoY = -5;
    }
  }
  void colisao(Barras outro) {
    testarColisaoX = this.posicaoBolaX;
    testarColisaoY = this.posicaoBolaY;

    if (this.posicaoBolaX < outro.posicaoBarraX) {
      testarColisaoX = outro.posicaoBarraX;
    } else if (this.posicaoBolaX > outro.posicaoBarraX + outro.larguraBarra) {
      testarColisaoX = outro.posicaoBarraX + outro.larguraBarra;
    }

    if (this.posicaoBolaY < outro.posicaoBarraY) {
      testarColisaoY = outro.posicaoBarraY;
    } else if (this.posicaoBolaY > outro.posicaoBarraY + outro.alturaBarra) {
      testarColisaoY =  outro.posicaoBarraY + outro.alturaBarra;
    }
    this.distancia = sqrt(sq(this.posicaoBolaX - testarColisaoX) + sq(this.posicaoBolaY - testarColisaoY));

    if ( this.distancia <= this.raio) {
      score+=1;
    }
  }
}
