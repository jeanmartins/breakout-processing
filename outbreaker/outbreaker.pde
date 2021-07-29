Jogador jogador = new Jogador();
Bola bola = new Bola(jogador);
Barras[][] barras = new Barras[10][6];
int score, vida;
boolean jogoAcabou = false;
boolean naoComecou = true;
void setup() {
  vida = 2;
  size(600, 600);
  for (int contador = 0; contador<barras.length; contador++) {
    for (int contadorJ = 0; contadorJ<barras[6].length; contadorJ++) {
      barras[contador][contadorJ] = new Barras(contador*60, (20*contadorJ)+120);
    }
  }
}

void draw() {
  background(0);
  if (jogoAcabou == false) {
    textSize(40);
    text(score, 270, 50);
    bola.desenhaBola(jogador);
    //bola.moverBola();
    bola.colisao(jogador);
    jogador.desenhaMove();
    for (int contador = 0; contador<barras.length; contador++) {
      for (int contadorJ = 0; contadorJ<barras[6].length; contadorJ++) {
        barras[contador][contadorJ].desenhaBarra();
        barras[contador][contadorJ].colisao(bola);
      }
    }
  }
  if (jogoAcabou == true) {
    text("Game Over", 210, 250);
    text("Score:" + score, 230, 50);
    text("Pressione na tela", 150, 380);
    text("para recomeçar", 150, 440);
    if (keyPressed == true) {
      if (keyCode == SHIFT) {
        jogoAcabou = false;
        naoComecou = true;
        vida=2;
        score=0;
      }
    }
  }
}
