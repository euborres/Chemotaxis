 //declare bacteria variables here   
 Bacteria[] hi;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	hi = new Bacteria [100];
 	for(int i = 0; i < hi.length; i++){
 		hi[i] = new Bacteria(250,250,color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256)));

 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(0);
 	for (int i = 0; i < hi.length; i++){
 		hi[i].show();
 		hi[i].move();
 	}

 }  
 
 class Bacteria    
 {     
 	//lots of java!   
 	int  myX,myY,myColor;
 	boolean eat;
 	Bacteria(int x, int y, int col){
 		myX = x;
 		myY = y;
 		myColor = col;
 		//eat = true;
 	}
 	void move(){
 		//x-coordinate
 		if(myX < mouseX)
 			myX = myX + (int)(Math.random() * 5) - 3;
 		else  
 			myX = myX + (int)(Math.random() * 5) - 1;
 		if (myX <= 0)
 			myX = myX + (int)(Math.random() * 5) + 3;
 		if (myX >= 500)
 			myX = myX - (int)(Math.random() * 5) - 3;
 		
 		//y-coordinate
 		if(myY < mouseY)
 			myY = myY + (int)(Math.random() * 5) - 3;
 		else  
 			myY = myY + (int)(Math.random() * 5) - 1;

 		if(myY >= 500)
 			myY = myY - (int)(Math.random() * 5) - 3;
 		if (myY <= 0)
 			myY = myY + (int)(Math.random() * 5) + 3;
 	}
 	void show(){
 		fill(myColor);
 		ellipse(myX,myY,20,20);
 	}
 }    