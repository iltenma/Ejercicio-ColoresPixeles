PImage [] fotos = new PImage [5];
int click, indice;
color capturaPixel, otroPixel;
float rojo, verde, azul;

void setup () {
  size (300, 400);
  fotos[0] = loadImage("playa.jpg");
  fotos[1] = loadImage("paisaje.jpg");
  fotos[2] = loadImage("luces.jpg");
  fotos[3] = loadImage("pergamo.jpg");
  fotos[4] = loadImage("coche.jpg");

  click = 0;
  indice = 0;
}
void draw () {
  image (fotos[indice % 5], 0, 0);

  // il for serve per ripetere le cose
  for (int i = 0; i <300; i ++) { // i=0 è la zona da cui parte, se mettessi 100 partirebbe da 100
    for ( int j = 0; j<400; j++) {
      capturaPixel = get(i, j);
      azul = blue (capturaPixel);


      if (mouseX >= 150) {
        rojo = map (mouseX, 150, 300, red(capturaPixel), 255);
      }else {
        rojo = map (mouseX, 150, 0, red(capturaPixel), 0);
      }
      
      if (mouseX >= 200) {
        verde = map (mouseY, 200, 400, green (capturaPixel), 255);
      }else {
        verde = map (mouseY, 200, 0, red(capturaPixel), 0);
      }

      otroPixel = color(rojo, verde, azul);
      set (i, j, otroPixel);
    }
  }
}

void mousePressed () {
  indice++;
}