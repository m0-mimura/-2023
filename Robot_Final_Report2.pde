float baseH = 60;
float baseW = 20;
float armL1 = 40;
float armL2 = 40;
float armL3 = 11;
float armL4 = 50;
float armW1 = 10;
float armW2 = 10;
float armW3 = 11;
float armW4 =  2;
float angle0 = 0;
float angle1 = -45;
float angle2 = 90;
float angle3 = 0;
float angle4 = 0;
float l4 = 0;
float dif = 1.0;
float HeadL = 20;
float x1 = -450;


void setup(){
  size(1200, 1200, P3D);
  //background(0);
  
  camera(140, 100, 100, 0, 0, 0, 0, 0, -1);
  
  stroke(1);  
}


void draw(){
  
  background(0);
  
  if(keyPressed){
    if(key == 'm'){
      angle0 = angle0 - dif;
    }
    if(key == 'n'){
      angle0 = angle0 + dif;
    }
    if(key == 'k'){
      angle1 = angle1 - dif;
    }
    if(key == 'j'){
      angle1 = angle1 + dif;
    }
    if(key == 'i'){
      angle2 = angle2 - dif;
    }
    if(key == 'o'){
      angle2 = angle2 + dif;
    }
    if(key == 'z'){
      angle3 = angle3 + dif;
    }
    if(key == 'x'){
      angle3 = angle3 - dif;
    }
    if(key == 'a'){
      angle4 = angle4 - dif;
    }
    if(key == 's'){
      angle4 = angle4 + dif;
    }
     if(key == 'q'){
      l4 = l4 - dif;
    }
    if(key == 'w'){
      l4 = l4 + dif;
    }
  }
  
 
  //base---Body
  pushMatrix();
  rotateZ(radians(angle0));
  translate(0, 0, baseH/2);
  fill(175);
  box(baseW, baseW, baseH);
  
  // (Head)
  translate(0, 0, baseH/2+HeadL);
  fill(#FEFF03);
  box(HeadL, HeadL, HeadL);
  
  //1st link---Jouwan
  translate(0, 0, -HeadL-armW1/2);
  rotateX(radians(angle1));
  translate(armL1/2-armW1/2,armL1/2-armW1/2, 0);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link---Zenwan
  //go to 2nd joint
  translate(0, armL1-2*armW1-armW2/2, 0);
  rotateX(radians(angle2));
  //go to center of 2nd joint
  translate(0, armW1+armW2/2, 0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link---Kobushi
  translate(0 , armL2-2*armW2, 0);
  rotateY(radians(angle3));
  fill(100);
  box(armW3, armL3, armW3);
  
  //4rth link---Hashi
   //Right Hashi
   translate(-armW4, armL3-2*armW4, -armW4+l4);
   rotateX(radians(angle4));
   fill(165, 42, 42);              //茶色を選択
   box(armW4,armW4,armL4);
   //Left Hashi
   translate(2*armW4, 0, 0);
   rotateX(radians(0));
   fill(165, 42, 42);              //茶色を選択
   box(armW4,armW4,armL4);
  popMatrix();
 
 //Dish
  pushMatrix();
  translate(x1, 40 ,-baseH/2+10);
  fill(175);
  x1 += 0.5;
  box(15, 15, 2);

//Sushi---Rice
 translate(0, 0 ,1);
 fill(255);
 box(4, 7, 4);

//Sushi---Fish
 translate(0, 0, 2);
 fill(#FF0F03);                   //赤色を選択
 box(5, 10, 1);
 popMatrix();
 
//Lane
pushMatrix();
 translate(0, 40, -baseH+19);
 fill(#F5C865);                   //肌色を選択
 box(1000, 20, 40);
 popMatrix();
 
//Sushi box
 pushMatrix();
 translate(-500, 35, -baseH+45);
 fill(#4C26A5);                   //紺色を選択
 box(100, 100, 100);
 popMatrix();

}
