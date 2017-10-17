Figura miFigura;
ArrayList <ArrayList> tablero;
void setup(){
 size(600,600,P3D);
 tablero = new ArrayList <ArrayList>();
 for(int i=0 ; i<8; i++){
   //empezar nueva fila
   ArrayList estaFila = new ArrayList<Figura>();
   for(int j= 0; j<8; j++){
     Figura nuevaFigura = new Figura();
     estaFila.add(nuevaFigura);
   }
   tablero.add(estaFila);
 }
 miFigura= new Figura();
}

void draw (){
  background(0);
  translate (width/2, height/2);
  float xValue = map(mouseX,(-width/2),width/2,0,2);
  float yValue = map(mouseY,(-width/2),width/2,0,2);
  rotateY(PI*yValue);
  rotateX(PI*xValue);
  //translate(120,120,120);
  for(int i=0; i< tablero.size(); i++){
    ArrayList estaFila = tablero.get(i);
    for(int j=0; j < estaFila.size(); j++){
      Figura estaFigura = estaFila.get(j);
  miFigura.run();
}
  }
}