
PImage imagen1, imagen2,imagen3;
PFont Letra1;
float x;
int fondo;

void setup (){
size (500, 400);
x = height/2;
imagen1 = loadImage("monster_inc.jpg");// primera escenarioo
imagen2 = loadImage("creditos1.png");//segundo escenario
imageMode(CENTER);
textAlign(CENTER);
textSize(40);
Letra1=loadFont("Letra1.vlw");
textFont(Letra1,40);
 fondo=0;

}
void draw(){
  
  if(fondo==0){
  image(imagen1, width/2, height/2, width, height);
text("Monster inc", width/2, x);
x +=0.5;
  }
if(x>300){
fondo=1;
x=0;
}

////segunda pantalla////

if (fondo == 1){
  
image(imagen2, width/2, height/2, width, height);
text("Personajes principales", width/2, x+40);
textSize(25);
text("John Goodman - Sullivan \n Billy Crystal - Mike Wazowski \n Mary Gibbs - Boo", width/2, x+100);
x += 1;
}
if (x>400){
 fondo = 2;
 x= 0;
}
 


/////tercera pantalla/////
if (fondo == 2){
  
image(imagen3, width/2, height/2, width, height);
//text("D", width/2, x+40);
 
}
}
