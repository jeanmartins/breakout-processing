Bola bola = new Bola();
Jogador jogador = new Jogador();
Barras teste = new Barras();
boolean estaVivo = true;
int score;
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  bola.desenhaBola();
  bola.moverBola();
  bola.colisao(jogador);
  bola.colisao(teste);
  jogador.desenhaMove();
  teste.desenhaBarra();
}
