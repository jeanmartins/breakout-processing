Bola bola = new Bola();
Jogador jogador = new Jogador();
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  bola.desenhaBola();
  bola.moverBola();
  bola.colisao(jogador);
  jogador.desenhaMove();
}
