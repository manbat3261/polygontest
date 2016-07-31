//Rose Vastola

Polygon poly = new Polygon();




void setup(){
 size(200,200); 
 background(255);
}

void draw() {
 
 
}

 /*****************************************************************/ 
 void mouseClicked(){
  background(255);
 
     poly.addPoint(mouseX,mouseY);
  
   if (poly.readyToDraw()) {
     background(255);
     poly.drawPoly();
     }
  
 }

void keyPressed() {
   poly.erasePoly(); 
}

/*****************************************************************/
class Polygon {
float xx;
float yy;
ArrayList<PVector> PVectors;
PVector CoordsLast;

Polygon(){   // this is the constructor that is called automatically when object is created
 PVectors = new ArrayList<PVector>(); 
 CoordsLast = new PVector();
}

 void addPoint(float x, float y){
   xx = x;
   yy=  y;
   println(xx, yy);
   PVectors.add(new PVector(xx, yy));
   CoordsLast.set(xx, yy);
   
 }
  
 boolean readyToDraw() {
   if (PVectors.size() > 1)  {
     return(true);
 } else {
     return(false);
 }
 }
   
 void drawPoly(){
      PVector Coords1, Coords2, CoordsOrig;
       background(255);
       CoordsOrig = PVectors.get(0);
       for (int i = 0; i < PVectors.size() - 1; i++) {
         Coords1 = PVectors.get(i);
         Coords2 = PVectors.get(i+1);
        
         line(Coords1.x, Coords1.y, Coords2.x, Coords2.y);
        
     }
       if (PVectors.size() > 2) {
             
             line(CoordsLast.x, CoordsLast.y, CoordsOrig.x, CoordsOrig.y);
         }
   
   
 }
 
 void erasePoly(){/// what will erase the panel
   background(255);
   PVectors.clear();
   println("poly reset", "set ready to draw to false", "\n");
 
   
 }
 
  
  
}

