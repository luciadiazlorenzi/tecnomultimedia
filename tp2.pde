/* Materia: Tecnología Multimedial 1
Profesor: José Luis Bugiolachi
Alumna:Díaz Lorenzi Lucía Milagros
Legajo: 91532/6
*/

int pirulo;
float variable;
float mengano;
int c;
void setup()
{
  size(600, 600);
 background(255);
  variable =1;
  c = 137;
}
void draw()
{
  background(255);
  mengano= 225;
  if(variable > 400){mengano = random(0,255);} 
  float mx = map(variable,1,600,0,100);
  strokeWeight (25);//define el grosor de las lineas
  stroke (mx); // color borde negro y se va degradando
  if (keyPressed == true) {
  stroke(c,10,114);
  } else {stroke(0);}//si tocas una tecla se cambia de color
  for (int pirulo = 0; pirulo<=600; pirulo += 50) {
    line (pirulo, 0, pirulo, 600);
  }

  stroke (mengano, 234, 53); // color borde amarillo
  strokeWeight (5);//grosor de líneas del rectángulo
  fill (mengano, 234, 53); // relleno amarillo
  variable +=1;
  rect (variable, 150, 100, 50);//rectángulo
  
  stroke (7,35,185); // color borde azul
  strokeWeight (5);//grosor de líneas del rectángulo
  fill (7,35,185); // relleno azul
  variable++;
  rect (variable, 400, 100, 50);//rectángulo
  println(variable);
    
}

void mousePressed() {
  if (variable == 600) {
    variable = 0;
  }else {variable=0;}//si apretas el mouse todo vuelve a empezar
}
