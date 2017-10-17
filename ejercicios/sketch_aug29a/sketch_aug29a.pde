// variables globales
Circulo circulo1;
Circulo circulo2;
Circulo circulo3;
Circulo circulo4;

void setup(){
  size (400,400);
  circulo1 = new Circulo(0,0,50,50);
  circulo2 = new Circulo(width,0,50,50);
  circulo3 = new Circulo(0,height,50,50);
   circulo4 = new Circulo(width,height,50,50);
  
}

void draw () {
 
  // MRU e= e(i-1) + vt
  background(0);
    circulo1.acc++;
    circulo1.x += circulo1.speed + circulo1.acc;
    circulo1.y += circulo1.speed + circulo1.acc;
    
    circulo2.acc++;
    circulo2.x += (circulo2.speed + circulo2.acc)*-1;
    circulo2.y += circulo2.speed + circulo2.acc;
     
     circulo3.acc++;
    circulo3.x += (circulo3.speed + circulo3.acc);
    circulo3.y += (circulo3.speed + circulo3.acc)*-1;
    
     circulo4.acc++;
    circulo4.x += (circulo4.speed + circulo4.acc)*-1;
    circulo4.y += (circulo4.speed + circulo4.acc)*-1;
     
     circulo1.dibujar();
     circulo2.dibujar();
     circulo3.dibujar();
     circulo4.dibujar();
}
