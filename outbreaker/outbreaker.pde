Bola bola = new Bola();
Jogador jogador = new Jogador();
Barras[] barras = new Barras[10];
int score;

void setup() {
  size(600, 600);
  for (int contador = 0; contador<barras.length; contador++) {
    barras[contador] = new Barras(contador*50);
  }
}

void draw() {
  background(0);
  bola.desenhaBola();
  bola.moverBola();
  bola.colisao(jogador);
  jogador.desenhaMove();
  for (int contador = 1; contador<barras.length; contador++) {
    barras[contador].desenhaBarra();
  }
  for (int contador = 1; contador<barras.length; contador++) {
    barras[contador].colisao(bola);
    //bola.colisao(barras[contador]);
  }
}
