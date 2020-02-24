//Variables
int numero = 1;
int J1=0;
int J2=0;

int vida1 = 100, vida2 = 100;

//clases
Flujo cambio;

class Flujo{

void pantallas(){
  switch (numero){
  
  case 1:
  PInicio();
  break;
  
  case 2:
  Pinstrucciones();
  break;
  
  case 3:
  Ppersonajes();
  break;
  
  
  case 4:
  Pjuego(); 
  break;
  
  
 case 5: 
  Pganador();
  break;
  
  }

}

//----------------------------------------------------------- el número que corresponde de cada pantalla
void PInicio(){
  background(#F98606);
  PFont font;
  font=loadFont("Arial-BoldMT-90.vlw"); 
  fill(#070438);
  textFont(font,90);
  text ("Ninjemys", 315, 300);
  textFont(font,50);
  text ("presiona 1 para continuar", 90,500);
  
  push();
  translate(-50,240);


    fill(8, 240, 0);
    circle(210, 40, 200);
    fill(65, 161, 249 );
    rect(110,30,200,30);
    fill(65, 161, 249);
    rect(300,30,30,30);
    fill(255);
    rect(165,80,90,30);
    fill(0);
    circle(150,50,20);
    fill(0);
    circle(270,50,20);
 pop();
 
  
  if (keyPressed)
    if (key== '1')
    numero ++;  
}

void Pinstrucciones(){
   background(#B080F2);
   PFont font1;
   font1=loadFont("DialogInput.bold-25.vlw");
   fill(#1A2126);
   textFont(font1,25);
   text("Escoge a tus personajes dando click sobre ellos" ,10,100);
   text("Presiona 'a' para atacar al jugador 2"  ,60,200);
   text("Presiona 'l' para atacar al jugador 1" ,60,300);
   text("Presiona 2 para continuar",200,500);
   
   if (keyPressed)
    if (key== '2')
    numero ++;
  }
  
  
void Ppersonajes(){
    background(#2590F7);
    
    PFont font2;
   font2=loadFont("Ebrima-25.vlw");
   fill(0);
   textFont(font2,25);
   text("presiona 3 para continuar",250,500);
   
    dibujar();
 
    if (mousePressed)
    escoger(mouseX,mouseY);   
    print(J1);
    print("  ", J2);
    
    
   if (keyPressed)
    if (key== '3')
    numero ++;
}
  
void Pjuego(){
   background(200);
   fondo();
   eleccion();
   vida();
   
   if (vida1 <=0 || vida2<=0)
    numero ++;
  }  
  
void Pganador(){
   background(#F8D422);
   fill(0);
   PFont font3;
   font3 =loadFont("OCRAExtended-100.vlw");
   textFont(font3,100);
   text("¡Ganador!",100,100);
   
   if(vida1<=0 ){
     
     if(J2 == 1){
       push();
       translate(400,200);
       donatello();
       pop();
       }
      if(J2 == 2){
       push();
       translate(400,200);
       splinter();
       pop();
      }
      
      if(J2 == 3){
       push();
       translate(400,200);
       leonardo();
       pop();
      }
      
       if(J2 == 4){
       push();
       translate(400,200);
       raphael();
       pop();
       }
       
       if(J2 == 5){
       push();
       translate(400,200);
       miguelangel();
       pop();
       } 
   }
   if(vida2<=0 ){
     
     if(J1 == 1){
       push();
       translate(400,200);
       donatello();
       pop();
       }
      if(J1 == 2){
       push();
       translate(400,200);
       splinter();
       pop();
      }
      
      if(J1 == 3){
       push();
       translate(400,200);
       leonardo();
       pop();
      }
      
       if(J1 == 4){
       push();
       translate(400,200);
       raphael();
       pop();
       }
       
       if(J1 == 5){
       push();
       translate(400,200);
       miguelangel();
       pop();
       } 
   }
   
   
   if (keyPressed)
    if (key== '5')
    numero ++;
  } 
}
//------------------------------------------------------------------------------Funcion de escoger

void escoger(float x, float y){
  if(( x>50 && x<150) && (y>250 && y<400)){
       
   if(J1 == 0)
     J1=1;
  
  else
   J2=1;
 }
 
  if(( x>175 && x <275) && (y>250 && y<400)){
    
   if(J1 == 0)
     J1=2;
     else
   J2=2;
 }
   
   
  if(( x>300 && x<400) && (y>250 && y<400)){    
   if(J1 == 0)
     J1=3;
     else
     J2=3;
 }
   
  
  
  if(( x>425 && x <525) && (y>250 && y<400)){    
   if(J1 == 0)
     J1=4;
     else
     J2=4;
 }
     

  if(( x>550 && x <650) && (y>250 && y<400)){   
   if(J1 == 0)
     J1=5;
     else
     J2=5;
  } 
}
 
//--------------------------------------------- funcion de dibujar

void dibujar (){
  fill(255);
  
  rect(50,250,100,150);
  rect(175,250,100,150);
  rect(300,250,100,150);
  rect(425,250,100,150);
  rect(550,250,100,150);
  
  push();
  translate(55,290);
  donatello();
  pop();
  
  push();
  translate(185 ,290);
  splinter();
  pop();
  
  push();
  translate(310,290);
  leonardo();
  pop();
  
  push();
  translate(430,290);
  raphael();
  pop();
  
  push();
  translate(560,290);
  miguelangel();
  pop();
}
void donatello(){
//Donatello  
   if(numero==5){
   scale(5);
   }
    fill(8, 240, 0);
    circle(40, 40, 80);
    fill(179, 0, 240);
    rect(0,30,80,15);
    fill(179, 0, 240);
    rect(80,30,15,15);
    fill(255);
    rect(22,55,35,8);
    fill(0);
    circle(20,40,10);
    fill(0);
    circle(55,40,10);
   
} 

void splinter(){
//splinter
  if(numero==5){
     scale(5);
     }
     
  push();
  translate(-85,0);
    fill(#A09C9C);
   circle(125, 40,80);
    fill(#A09C9C);
    circle(155,5,40);
    fill(#A09C9C);
    circle(95,5,40);
    fill(0);
    circle(110,40,10);
    fill(0);
    circle(145,40,10);
    fill(0);
    circle(128,50,10);
    fill(255);
    rect(120,60,8,10);
    fill(255);
    rect(128,60,8,10);
  pop();
}

void leonardo(){ 
//Leonardo
  if(numero==5){
   scale(5);
   }

    push();
    translate(-170,0);
    fill(8, 240, 0);
    circle(210, 40, 80);
    fill(65, 161, 249 );
    rect(170,30,80,15);
    fill(65, 161, 249);
    rect(250,30,15,15);
    fill(255);
    rect(192,55,35,8);
    fill(0);
    circle(190,40,10);
    fill(0);
    circle(230,40,10); 
    
    pop();
}  
 
void raphael(){
//Raphael
  if(numero==5){
   scale(5);
   }


     push();
    translate(-260,0);
    fill(8, 240, 0);
    circle(300, 40, 80);
    fill(251, 50, 14  );
    rect(260,30,80,15);
    fill(251, 50, 14 );
    rect(340,30,15,15);
    fill(255);
    rect(282,55,35,8);
    fill(0);
    circle(280,40,10);
    fill(0);
    circle(320,40,10);
    
   pop();
}
  
void miguelangel(){   
//MiguelAngel
    if(numero==5){
     scale(5);
     }

    push();
    translate(-360,0);
    fill(8, 240, 0);
    circle(400, 40, 80);
    fill(244, 160, 4);
    rect(360,30,80,15);
    fill(244, 160, 4);
    rect(440,30,15,15);
    fill(255);
    rect(382,55,35,8);
    fill(0);
    circle(380,40,10);
    fill(0);
    circle(420,40,10);  
    
    pop();
}
//-----------------------------------------------------------------------------------------------

void fondo(){
  background(#5BABFA);
  noStroke();
  fill(#5A5E62);
  rect(0,500,800,100);
  stroke(0);
  fill(#F2310F);
  rect(80,0,650,500);
  
//venatnas

noStroke();
fill(255);
rect(100,5,100,150);
stroke(4);
fill(#1844ED);
rect(107,10,85,140);


noStroke();
fill(255);
rect(300,5,100,150);
stroke(4);
fill(#1844ED);
rect(307,10,85,140);


noStroke();
fill(255);
rect(500,5,100,150);
stroke(4);
fill(#1844ED);
rect(507,10,85,140);

noStroke();
fill(255);
rect(100,200,100,150);
stroke(4);
fill(#1844ED);
rect(107,205,85,140);

noStroke();
fill(255);
rect(300,200,100,150);
stroke(4);
fill(#1844ED);
rect(307,205,85,140);


noStroke();
fill(255);
rect(500,200,100,150);
stroke(4);
fill(#1844ED);
rect(507,205,85,140);

}


//-----------------------------------------------------------------------------

void eleccion(){

if( J1==1){

push();
translate(100,450);
donatello();
pop();
}

if( J1==2){

push();
translate(200,450);
splinter();
pop();
}

if( J1==3){

push();
translate(100,450);
leonardo();
pop();
}


if( J1==4){

push();
translate(100,450);
raphael();
pop();
}

if( J1==5){

push();
translate(100,450);
miguelangel();
pop();
}


//J2--------------------------------------------------------------------------------------------------------------------------------------

if( J2==1){

push();
translate(400,450);
donatello();
pop();
}

if( J2==2){

push();
translate(400,450);
splinter();
pop();
}

if( J2==3){

push();
translate(400,450);
leonardo();
pop();
}


if( J2==4){

push();
translate(400,450);
raphael();
pop();
}

if( J2==5){

push();
translate(400,450);
miguelangel();
pop();
}
}
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void vida(){
  if(keyPressed)
  if(key=='a')
  vida2= vida2-round(random(15));
  
  if(keyPressed)
  if(key=='l')
  vida1= vida1-round(random(15));
  
  
  fill(#FAE528);
  rect(0,20,vida1,20);
  fill(#FAE528);
  rect(700,20,vida2,20);
  
  stroke(0);
  noFill();
  rect(0,20,100,20);
  rect(700,20,100,20);
}

//----------------------------------------------------------------------------------------
void setup(){
  size (800,600);
  background(255);
  cambio = new Flujo(); 
} 


 void draw(){
 
 cambio.pantallas();
 
 
 } 
