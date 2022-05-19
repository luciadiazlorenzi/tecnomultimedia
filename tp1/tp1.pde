/* Materia: Tecnología Multimedial 1
Profesor: José Luis Bugiolachi
Alumna:Díaz Lorenzi Lucía Milagros
Legajo: 91532/6
*/

PImage imagen1, imagen2,imagen3, imagen4, imagen5;
PFont Letra1, Letra2;
float x;
int fondo;
String s = "DIRECTOR:\n Pete Docter \n Lee Unkrich \n David Silverman";
void setup (){
size (500, 400);
x = height/2;
fondo=0;
imagen1 = loadImage("monster_inc.jpg");// primera escenarioo
imagen2 = loadImage("creditos1.png");//segundo escenario
imagen3 = loadImage("imagen3.jpg");//tercer escenario
imagen4 = loadImage("imagen4.png");//cuarto escenario
imagen5 = loadImage("imagen5.jpg");//quinto escenario
imageMode(CENTER);
textAlign(CENTER);
textSize(40);
Letra1=loadFont("Letra1.vlw");
Letra2=loadFont("Letra2.vlw");
textFont(Letra1,40);
 fondo=0;

}
void draw(){
  
/////primera pantalla/////
  
if(fondo==0){
  image(imagen1, width/2, height/2, width, height);
  fill(225);
text("Monster inc", width/2, x);
fill(112,179,232);
ellipse(350, 150, frameCount%50, frameCount % 50);
x +=0.5;
  }
if(x>300){
fondo=1;
x=0;
}

////segunda pantalla////

 if (fondo == 1){
  
image(imagen2, width/2, height/2, width, height);
fill(225);
text("Personajes principales", width/2, x-60);
textSize(25);
text("John Goodman - Sullivan \n Billy Crystal - Mike Wazowski \n Mary Gibbs - Boo \n Steve Buscemi - Randall", width/2, x);
x +=1;
if (x>300){
 fondo = 2;
 x= 0;
}
}

 /////tercera pantalla/////

  if (fondo == 2) {

    image(imagen3, width/2, height/2, width, height);
    textSize(20);
    text(s, x, 25);
    x+=1;
    if (x>200) {
      fondo = 3; // aca despues le puedes agregar que void mousePrssed o algo asi que renicie de nuevo con apretar el mouse o lago 
      x= 0;
    }
  }

  /////cuarta pantalla/////
  if (fondo == 3) {
    image(imagen4, width/2, height/2, width, height);
    textSize(20);
    fill(225);
    text("Personajes:", 140, 50);
    if (frameCount % 2 == 0) {
      fill(0);
      text("Bob \n Peterson", 230, 100);
      textFont(Letra2, 15);
      text("- Roz", 230, 150);
      textFont(Letra1, 20);
      text("Jennifer \n Tilly", 420, 100);
      textFont(Letra2, 15);
      text("- Celia", 420, 160);
      textFont(Letra1, 20);
      text("James \n Coburn ", 255, 275);
      textFont(Letra2, 15);
      text("- Waternoose", 255, 330);
      
      
    }
    x++;

    if (x>300) { 
      fondo = 4; 
      x=0;
    }
  }

/////quinta pantalla/////

  if (fondo == 4) {
    image(imagen5, width/2, height/2, width, height);
    text("Diseño de producción:", x+140, 50);
    x+=1;
    textFont(Letra1, 15+x);
    text("Harley Jessup \n Bob Pauley", 140, 100);
    x+=0.1;
    if (x>5) {
      x=9;
    }
    x+=1;
  }
  }
void mousePressed(){
if(fondo == 4){fondo = 0;
}else{
}
}
