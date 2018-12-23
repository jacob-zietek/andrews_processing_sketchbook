float offset=0;
void setup(){
	size(400,400);
	colorMode(HSB);
	frameRate(60);
}
void draw(){
	background(255);
	pushMatrix();
	translate(200,200);
	for(int i=-300;i<300;i++){
		rotate(offset);
		stroke( (abs(i)+offset) % 330 , 255, 255);
		line(i,-300,i,300);
	}
	popMatrix();
	offset+=0.001;
};

/* Simple adjustments to make the program run in fullscreen
float offset=0;
void setup(){
  fullScreen();
  colorMode(HSB);
  frameRate(30);
}
void draw(){
  background(255);
  pushMatrix();
  translate(width/2,height/2);
  for(int i=-300;i<300;i++){
    rotate(offset);
    stroke( (abs(i)+offset) % 330 , 255, 255);
    line(i*2.5,-300*2.5,i*2.5,300*2.5);
  }
  popMatrix();
  offset+=0.001;
};
*/
