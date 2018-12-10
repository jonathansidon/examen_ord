Arbol arbol;
void setup() {

  int[] x={4, 12, 9, 23, 6, 91, 2, 54, 37, 1, 5, 78, 87, 25};  
  int i=0;
  arbol = new Arbol();
  if (x.length==0) {
    exit();
  }
  for (i=0; i<x.length; i++) {

    arbol.insert(x[i]);
  }
  arbol.recorrer(arbol.raiz);
  exit();
}