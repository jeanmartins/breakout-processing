class Barras {
  float posicaoBarraX, posicaoBarraY, larguraBarra, alturaBarra;
  Barras(int posicaoTempX) {
    this.posicaoBarraX = posicaoTempX;
    this.posicaoBarraY = 300;
    this.larguraBarra = 60;
    this.alturaBarra = 20;
  }

  void desenhaBarra() {
    rect(this.posicaoBarraX, this.posicaoBarraY, this.larguraBarra, this.alturaBarra);
  }
}
