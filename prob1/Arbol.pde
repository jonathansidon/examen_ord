public class Arbol{
  
  Nodo raiz;
  int q, w;
  
  public Arbol(){
    raiz=null;
    q=0;
    w=0;
  }
  
  public void insert(int i){ 
    Nodo n = new Nodo(i, q);  
    q=q+1;
    if (raiz==null){
      raiz=n;
    }else{
      Nodo sec= raiz;
      while(sec!=null){
        n.padre=sec;
        if(n.llave>=sec.llave){
          sec=sec.derecha;
        }else{
          sec=sec.izquierda;
        }
      }
      
      if(n.llave< n.padre.llave){
        n.padre.izquierda = n;
      }else{
        n.padre.derecha = n;
      }
    }
  }
  
  public void recorrer(Nodo n){
    if(n!=null){
       recorrer(n.derecha);
       println("Id="+n.id+" Valor="+n.llave);
       recorrer(n.izquierda);      
    }
  }
  
 private class Nodo{
     public Nodo padre;
     public Nodo derecha;
     public Nodo izquierda;
     public int llave;
     public int id;
     
     public Nodo(int indice, int w){
       llave=indice;
       derecha=null;
       izquierda=null;
       padre=null;
       id=w;
    ;     }
  }
}