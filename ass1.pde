
//put ball of yarn on couch a little ways away from cat, when clicked it rolls
//towards the cat and then the cat bats it back to where it started

//button that changes appearance of cat
//different colours, and fat style
// fat style = ellipse(220, 318, 100, 100);
//make draw normal/base cat a function

//make lamp out of custom shape like createShape() or something
PShape lamp;
PShape lampshine;
boolean yarn_beside_cat = false;
float yarnx = 140;
float yarny = 315;
int moved = 0;
boolean clicked = false;
String catmode = "normal";
color catlight = color(110, 111, 106);
color catdark = color(85, 91, 107);
color random = color(0);
color random1 = color(0);

void setup() {
  size(500, 500);
  noStroke();
 
  lamp = createShape();
  lamp.beginShape();
  lamp.noStroke();
  lamp.vertex(18, -5); // top left
  lamp.vertex(47, -5); // top right
  lamp.vertex(60, 45); // bottom right
  lamp.vertex(5, 45); // bottom left
  lamp.endShape();
  lamp.setFill(color(#ECDEA1));
  
  lampshine = createShape();
  lampshine.beginShape();
  lampshine.noStroke();
  lampshine.vertex(35, -5);
  lampshine.vertex(43, -5);
  lampshine.vertex(54, 45);
  lampshine.vertex(40, 45);
  lampshine.endShape();
  lampshine.setFill(color(#F5E9AF));
  
  noLoop();
}

void draw() {
  loop();
  background(#F7B956);

  fill(#C98942);
  rect(0, 333, 500, 167); // floor
 
  //bookshelf
  fill(#542A11);
  rect(70, 90, 160, 200); // bookshelf
  fill(#744C28);
  rect(78, 97, 144, 50); // top shelf light
  rect(78, 154, 144, 50); // mid shelf light
  rect(78, 211, 144, 50); // bottom shelf light
  fill(#6D4426);
  rect(78, 97, 72, 50); // top dark
  rect(78, 154, 72, 50); // mid dark
  rect(78, 211, 72, 50); // bottom dark
  fill(#B7844B);
 
 
  // window
  fill(#95693A);
  rect(340, 75, 120, 130); // dark side window frame
  fill(#AA7843);
  rect(340, 75, 60, 130); // light side window frame
  fill(#895B2A);
  rect(330, 205, 140, 10); // sill
  fill(#34494C);
  rect(350, 85, 42.5, 110); // left patch of sky
  rect(407.5, 85, 42.5, 110); // right patch of sky
  fill(#F7F1B5);
  ellipse(427, 115, 30, 30); // moon
  fill(#34494C);
  ellipse(420, 113, 25, 25); // makes moon not full
  fill(255);
  rect(370, 105, 10, 10);//highest star
  fill(#34494C);
  ellipse(370, 105, 10, 10);
  ellipse(380, 105, 10, 10);
  ellipse(370, 115, 10, 10);
  ellipse(380, 115, 10, 10);
  fill(255);
  rect(360, 145, 10, 10); // left star
  fill(#34494C);
  ellipse(360, 145, 10, 10);
  ellipse(370, 145, 10, 10);
  ellipse(360, 155, 10, 10);
  ellipse(370, 155, 10, 10);
  fill(255);
  rect(430, 170, 10, 10); // right star
  fill(#34494C);
  ellipse(430, 170, 10, 10);
  ellipse(430, 180, 10, 10);
  ellipse(440, 170, 10, 10);
  ellipse(440, 180, 10, 10);
 
  //lamp
  stroke(#A06A3B);
  strokeWeight(2);
  line(270, 175, 270, 200); // lamp string
  noStroke();
  fill(#A06A3B);
  ellipse(270.5, 200, 5, 5); // lamp string bead
  shape(lamp, 250, 135); // lampshade
  shape(lampshine, 250, 135); // lampshade shine
  rect(280, 180, 6, 100); // lamp leg
 
  //side table
  fill(#AE713A);
  rect(377, 389, 95, 4); // shadow under table
  fill(#734120);
  rect(380, 295, 85, 90); // table body
  rect(380, 385, 6, 6); // left table leg
  rect(459, 385, 6, 6); // right table leg
  fill(#D45039);
  ellipse(425, 273, 15, 15); // handle
  fill(#F7B956);
  ellipse(425, 273, 10, 10); // hollowed part of handle
  fill(#F9C675);
  rect(405, 245, 20, 17); // steam
  fill(#D45039);
  rect(405, 260, 20, 20); // main part of cup
  ellipse(415, 280, 20, 15); // rounded bottom
  fill(#512B14);
  rect(377, 285, 91, 10); // table top
  fill(#774925);
  rect(386, 301, 73, 23.33); // top drawer dark
  rect(386, 328.33, 73, 23.33); // middle drawer dark
  rect(386, 355.66, 73, 23.33); // bottom drawer dark
  fill(#89522B);
  rect(386, 301, 36.5, 23.33); // top drawer light
  rect(386, 328.33, 36.5, 23.33); // middle drawer light
  rect(386, 355.66, 36.5, 23.33); // bottom drawer light
  fill(#68391B);
  rect(412.5,  310.7, 20, 4); // top handle
  rect(412.5, 338, 20, 4); // middle handle
  rect(412.5, 365.4, 20, 4); // bottom handle

  //couch
  fill(#965223);
  rect(30, 290, 315, 85, 7); // couch support
  fill(#AE713A);
  rect(30, 385, 315, 12); // couch shadow
  fill(#754424);
  rect(50, 375, 13, 15); // left couch leg
  rect(312, 375, 13, 15); // right couch leg
  fill(#9EC550);
  rect(60, 318, 127.5, 20); // couch seat top dark
  ellipse(60, 338, 40, 40); // couch seat top dark rounded edge
  fill(#ABD356);
  rect(187, 318, 127.5, 20); // couch seat top light
  ellipse(314.5, 338, 40, 40); // couch seat top light rounded edge
  fill(#90C455);
  rect(40, 338, 295, 25, 2); // couch seat front light
  fill(#8CB954);
  rect(40, 338, 147.5, 25, 2); // couch seat front dark
  fill(#8FB756);
  rect(60, 240, 127.5, 78); // couch back dark
  fill(#96BF55);
  rect(187, 240, 127.5, 78); // couch back light
  fill(#EBB12B);
  rect(55, 275, 50, 50, 7); // yellow
  fill(#EC932D);
  rect(85, 285, 40, 40, 4); // ollow
  fill(#DE482F);
  rect(270, 290, 35, 35, 4);
  //cat
 
  if (catmode == "normal") {
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(242, 330.25, 60, 50, radians(360), radians(475)); // cat tail
    noStroke();
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(#FFFB85);
    ellipse(218, 318, 7, 2); // left eye
    ellipse(205, 318, 6, 2); // right eye
    fill(0);
    ellipse(219, 318, 2, 2); // left pupil
    ellipse(206, 318, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 322, 5, 1); // nose
  } else if (catmode == "fat") {
    fill(catlight);
    ellipse(250, 310, 120, 100);
    fill(#ABD356);
    rect(190, 330, 120, 10);
    fill(#90C455);
    rect(188, 338, 127.5, 25, 2);
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(272, 330.25, 60, 50, radians(360), radians(475)); // cat tail
    noStroke();
    //ellipse(200, 325, 8, 8); cat paw
    //rect(200, 321, 20, 8);
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(#FFFB85);
    ellipse(218, 318, 7, 2); // left eye
    ellipse(205, 318, 6, 2); // right eye
    fill(0);
    ellipse(219, 318, 2, 2); // left pupil
    ellipse(206, 318, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 322, 5, 1); // nose
  } else if (catmode == "green") {
    catlight = random;
    catdark = random1;
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(242, 330.25, 60, 50, radians(360), radians(475)); // cat tail
    noStroke();
    //ellipse(200, 325, 8, 8); cat paw
    //rect(200, 321, 20, 8);
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(#FFFB85);
    ellipse(218, 318, 7, 2); // left eye
    ellipse(205, 318, 6, 2); // right eye
    fill(0);
    ellipse(219, 318, 2, 2); // left pupil
    ellipse(206, 318, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 322, 5, 1); // nose
  } else if (catmode == "bigeyes") {
    catlight = color(110, 111, 106);
    catdark = color(85, 91, 107);
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(242, 330.25, 60, 50, radians(360), radians(475)); // cat tail
    noStroke();
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(#FFFB85);
    ellipse(205, 318, 14, 9); // left eye
    ellipse(220, 318, 14, 9); // right eye
    fill(0);
    ellipse(219, 318, 4, 9); // left pupil
    ellipse(206, 318, 4, 9); // right pupil
    fill(#FFD5F1);
    ellipse(212, 323, 5, 1); // nose
  } else if (catmode == "tongueout") {
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(242, 330.25, 60, 50, radians(360), radians(475)); // cat tail
    noStroke();
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(#FFB7EA);
    ellipse(211, 330, 3, 7); // cat tongue
    fill(#FFFB85);
    ellipse(218, 318, 7, 2); // left eye
    ellipse(205, 318, 6, 2); // right eye
    fill(0);
    ellipse(219, 318, 2, 2); // left pupil
    ellipse(206, 318, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 322, 5, 1); // nose
  } else if (catmode == "longlegs") {
    fill(catlight);
    arc(245, 220.25, 60, 50, radians(180), radians(360)); // cat body
    rect(230, 219, 6, 110); // front left leg
    rect(220, 219, 6, 110); // front right leg
    rect(255, 219, 6, 110); // back right leg
    rect(265, 219, 6, 110); // back left leg
    stroke(catdark);
    strokeWeight(5);
    noFill();
    arc(302, 220.25, 60, 50, radians(1), radians(180)); // cat tail
    noStroke();
    fill(catdark);
    ellipse(215, 208, 25, 25); // cat head
    triangle(203, 203, 211, 200, 203, 193); // left ear
    triangle(219, 201, 227, 205, 226, 191); // right ear
    fill(#FFFB85);
    ellipse(218, 207, 7, 2); // left eye
    ellipse(205, 207, 6, 2); // right eye
    fill(0);
    ellipse(219, 207, 2, 2); // left pupil
    ellipse(206, 207, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 212, 5, 1); // nose
  } else if (catmode == "meowth") {
    catlight = color(245, 228, 157);
    catdark = color(240, 211, 137);
    stroke(#BC8D4B);
    strokeWeight(5);
    noFill();
    arc(242, 330.25, 60, 50, radians(360), radians(475)); // dark tip
    stroke(catdark);
    arc(242, 330.25, 60, 50, radians(360), radians(450)); // meowth tail
    noStroke();
    fill(catlight);
    arc(245, 330.25, 60, 50, radians(180), radians(360)); // cat body
    fill(0);
    triangle(203, 313, 211, 310, 203, 303); // left ear
    triangle(219, 311, 227, 315, 226, 301); // right ear
    fill(catdark);
    ellipse(215, 318, 25, 25); // cat head
    fill(255, 238, 0);
    ellipse(212, 308, 7, 15); // gold coin
    fill(#FFFB85);
    ellipse(218, 318, 7, 2); // left eye
    ellipse(205, 318, 6, 2); // right eye
    fill(0);
    ellipse(219, 318, 2, 2); // left pupil
    ellipse(206, 318, 2, 2); // right pupil
    fill(#FFD5F1);
    ellipse(211, 322, 5, 1); // nose
  }
 
  fill(#52c782);
  rect(100, 127, 30, 20); // button
 
}

void mouseClicked() {  
  //if ((yarn_beside_cat == false) && (mouseX >= 125) && (mouseX <= 155) && (mouseY >= 300) && (mouseY <= 330)) {// || (mouseX >= 170) && (mouseX <= 200) && (mouseY >= 300) && (mouseY <= 330)) {
    //clicked = true;
    //print("   ");
    //print("clicked");
  //}
  if ((mouseX >= 100) && (mouseX <= 130) && (mouseY >= 127) && (mouseY <= 147)) {
    if (catmode == "normal") {
      catmode = "fat";
      print("fat");
    } else if (catmode == "fat") {
      catmode = "green";
      print("green");
      random = color(random(255), random(255), random(255));
      random1 = color(random(255), random(255), random(255));
    } else if (catmode == "green") {
      catmode = "bigeyes";
      print("bigeyes");
      catlight = color(110, 111, 106);
      catdark = color(85, 91, 107);
    } else if (catmode == "bigeyes") {
      catmode = "tongueout";
      print(catmode);
    } else if (catmode == "tongueout") {
      catmode = "longlegs";
      print(catmode);
    } else if (catmode == "longlegs") {
      catmode = "meowth";
      print(catmode);
    } else {
      catmode = "normal";
      print(catmode);
      catlight = color(110, 111, 106);
      catdark = color(85, 91, 107);
    }
  }
}
