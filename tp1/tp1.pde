
//MocceroMaria Luz
//Comision 2


PImage img;
void setup() {
 size(800, 400);

 img = loadImage("springday.jpg");
}
void draw() {
 image(img,0,0);
 println (mouseX +"/"+ mouseY);
 noFill();
noStroke();


//arena
fill(#FCF9E5);
  rect(400,262,400,84);
  triangle(800,251,800,273,623,254);
  
//piso
fill(#DEE8E5);
  beginShape();
  vertex(423,346);
  vertex(455,322);
  vertex(728,317);
  vertex(753,346);
  vertex(423,346);
  endShape();

fill(#DBD7E3);
  beginShape();
  vertex(733,321);
  vertex(700,288);
  vertex(506,289);
  vertex(456,322);
  vertex(733,321);
  endShape();
fill(#8E8E8E);
  rect(456,322,278,8);

//cemento
fill(#ADADAD);
  rect(400,344,400,58);
  
//cielo
fill(#C7DEFC);
  rect(400,0,400,219);

//mar
fill(#375E9B);
  rect(400,220,400,9);
fill(#5C7DB2);
  rect(400,229,400,33);
fill(120,173,160,100);
  rect(400,242,400,21);
  
//paradamicro
fill(#343B3A);
  beginShape();
  vertex(498,299);
  vertex(695,299);
  vertex(711,318);
  vertex(455,323);
  vertex(490,299);
  vertex(698,299);
  endShape();
  
//madera
fill(#7E4E29);
  beginShape();
  vertex(484,250);
  vertex(501,245);
  vertex(695,245);
  vertex(695,294);
  vertex(503,294);
  vertex(484,310);
  vertex(484,250);
  endShape();
fill(#523118);
  beginShape();
  vertex(698,245);
  vertex(714,250);
  vertex(714,310);
  vertex(698,294);
  vertex(698,245);
  endShape();


fill(101,134,232,100);
  rect(504,178,61,67);//1errect izq
  rect(571,178,60,67);
  rect(637,178,58,67);
  
  beginShape();
  vertex(484,172);
  vertex(501,178);
  vertex(501,245);
  vertex(484,250);
  vertex(484,172);
  endShape();
  
  beginShape();
  vertex(714,167);
  vertex(698,178);
  vertex(698,245);
  vertex(714,250);
  vertex(714,167);
  endShape();
  
//barras  
fill(#676C6B);
  rect(478,160,6,158);
  rect(501,167,3,134);
  rect(565,167,6,134);
  rect(631,167,6,134);
  rect(695,167,3,134);
  rect(714,160,6,158);
  rect(503,175,193,4);
  rect(503,294,193,2);
  
  beginShape();
  vertex(484,168);
  vertex(503,175);
  vertex(503,179);
  vertex(484,172);
  vertex(484,168);
  endShape();
  
  beginShape();
  vertex(714,168);
  vertex(697,175);
  vertex(697,179);
  vertex(714,172);
  vertex(714,168);
  endShape();
  
 beginShape();
 vertex(484,309);
 vertex(501,294);
 vertex(501,296);
 vertex(484,311);
 vertex(484,309);
 endShape();
 
 beginShape();
 vertex(715,309);
 vertex(698,294);
 vertex(698,296);
 vertex(713,311);
 vertex(715,309);
 endShape();

//rectarriba
  rect(467,147,261,13);
fill(#8FA29E);
  beginShape();
  vertex(467,159);
  vertex(501,167);
  vertex(698,167);
  vertex(727,159);
  vertex(467,159);
  endShape();
  
 fill(#6F8681);
  beginShape();
  vertex(535,159);
  vertex(540,159);
  vertex(547,167);
  vertex(539,167);
  vertex(533,159);
  endShape();
  beginShape();
  vertex(595,159);
  vertex(601,159);
  vertex(602,167);
  vertex(596,167);
  vertex(595,159);
  endShape();
  beginShape();
  vertex(654,159);
  vertex(660,159);
  vertex(656,167);
  vertex(651,167);
  vertex(654,159);
  endShape();
  
//palo
fill(#AF8760);
  beginShape();
  vertex(729,333);
  vertex(735,340);
  vertex(759,340);
  vertex(750,331);
  vertex(729,333);
  endShape();
  
fill(#909BAA);
  rect(743,118,34,48);
fill(#D8D5DE);
  rect(743,140,34,26);
fill(#5A3919);
  rect(741,118,6,205);

  beginShape();
  vertex(740,323);
  vertex(746,323);
  vertex(753,335);
  vertex(748,334);
  vertex(748,337);
  vertex(742,336);
  vertex(733,335);
  vertex(732,334);
  vertex(740,323);
  endShape();
  
  fill(0);
  rect(747,118,30,1);
  rect(747,118,1,47);
  rect(747,164,30,1);
 
//hoja
fill(#9EAAA7);
  rect(518,220,36,24);
  
//banco
fill(#1F140D);
  beginShape();
  vertex(500,279);
  vertex(698,279);
  vertex(689,271);
  vertex(509,271);
  vertex(500,279);
  endShape();
  
  rect(512,279,2,22);
  rect(584,279,2,22);
  rect(611,279,2,22);
  rect(681,279,3,23);
  
//sombra
fill(#A29994);
  beginShape();
  vertex(401,325);
  vertex(407,323);
  vertex(412,323);
  vertex(430,322);
  vertex(440,323);
  vertex(455,324);
  vertex(456,331);
  vertex(578,330);
  vertex(576,334);
  vertex(438,334);
  vertex(429,340);
  vertex(421,340);
  vertex(412,341);
  vertex(400,340);
  vertex(401,325);
  endShape();
  
//sombrapalo
  beginShape();
  vertex(732,333);
  vertex(541,341);
  vertex(541,343);
  vertex(732,338);
  endShape();
  
}
