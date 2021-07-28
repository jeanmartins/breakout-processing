class Barras {
  float posicaoBarraX, posicaoBarraY, larguraBarra, alturaBarra;
  Barras() {
    this.posicaoBarraX = 300;
    this.posicaoBarraY = 300;
    this.larguraBarra = 60;
    this.alturaBarra = 20;
  }

  void desenhaBarra() {
    if (estaVivo == true) {
      rect(this.posicaoBarraX, this.posicaoBarraY, this.larguraBarra, this.alturaBarra);
    }
  }
}
