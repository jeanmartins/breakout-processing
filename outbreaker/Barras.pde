class Barras {
  float posicaoBarraX, posicaoBarraY, larguraBarra, alturaBarra, testarColisaoX, testarColisaoY, distancia;
  boolean estaVivo;
  Barras(int posicaoTempX) {
    this.posicaoBarraX = posicaoTempX;
    this.posicaoBarraY = 300;
    this.larguraBarra = 60;
    this.alturaBarra = 20;
    estaVivo = true;
  }

  void desenhaBarra() {
    if (estaVivo == true) {
      rect(this.posicaoBarraX, this.posicaoBarraY, this.larguraBarra, this.alturaBarra);
    }
  }
  void colisao(Bola outro) {
    testarColisaoX = outro.posicaoBolaX;
    testarColisaoY = outro.posicaoBolaY;

    if (outro.posicaoBolaX < this.posicaoBarraX) {
      testarColisaoX = this.posicaoBarraX;
    } else if (outro.posicaoBolaX > this.posicaoBarraX + this.larguraBarra) {
      testarColisaoX = this.posicaoBarraX + this.larguraBarra;
    }

    if (outro.posicaoBolaY < this.posicaoBarraY) {
      testarColisaoY = this.posicaoBarraY;
    } else if (outro.posicaoBolaY > this.posicaoBarraY + this.alturaBarra) {
      testarColisaoY =  this.posicaoBarraY + this.alturaBarra;
    }
    this.distancia = sqrt(sq(outro.posicaoBolaX - testarColisaoX) + sq(outro.posicaoBolaY - testarColisaoY));

    if ( this.distancia <= outro.raio) {
      estaVivo = false;
    }
  }
}
