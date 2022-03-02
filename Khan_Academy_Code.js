// building and circles:
var xPosR = 0;
var yPosR = 320;
var xPosP = 400;
var yPosP = 80;
var windowPosY = 170;
var starSize = 10;
draw = function() {
    background(29, 40, 115);
    //apartment
fill(255,250,2);
rect(255,160,50,230);
fill(0, 0, 0);
rect(270,windowPosY,20,20);
rect(0,350,399,50);
rect(270,windowPosY+30,20,20);
rect(270,windowPosY+60,20,20);
rect(270,windowPosY+100,20,70);
fill(200,255,100);
ellipse(277,310,10,10);
    //red shooting star
    fill(255,0,0);
    ellipse(xPosR,yPosR,starSize,starSize);
    xPosR+=3;
    yPosR-=3;
    //pink shooting star
    fill(255, 100, 200);
    ellipse(xPosP,yPosP,starSize,starSize);
    xPosP-=2;
};


// fish tank:

//background
background(89, 216, 255);
fill (138, 138, 138);
//rocks
var x = 370;
var y = 390;

ellipse (x,y,80,30);
ellipse (x-340,y,80,30);
ellipse (x-50,y,80,30);
ellipse (x-100,y,80,30);
ellipse (x-150,y,80,30);
ellipse (x-200,y,80,30);
ellipse (x-250,y,80,30);
ellipse (x-290,y,80,30);

var centerX = 200;
var centerY = 100;
var bodyLength = 118;
var bodyHeight = 74;
var bodyColor = color(101, 33, 140);

noStroke();
var tailColor = fill (255, 170, 0);
var eyeSize = bodyHeight - 59;
var drawFish = function (centerX, centerY, bodyLength, bodyHeight, bodyColor, tailColor, eyeSize) {
    fill(bodyColor);

// body
bodyColor = fill (162, 0, 255);
ellipse(centerX, centerY, bodyLength, bodyHeight);

// tail
tailColor = fill (255, 170, 0);
var tailWidth = bodyLength/4;
var tailHeight = bodyHeight/2;
triangle(centerX-bodyLength/2, centerY,
         centerX-bodyLength/2-tailWidth, centerY-tailHeight,
         centerX-bodyLength/2-tailWidth, centerY+tailHeight);

// eye
fill(33, 33, 33);
ellipse(centerX+bodyLength/4, centerY, eyeSize, eyeSize);
};

drawFish(centerX + 100, centerY + 100, bodyLength - 20, bodyHeight + 70, tailColor, bodyColor, eyeSize + 10);
drawFish(centerX + 50, centerY + 200, bodyLength - 20, bodyHeight - 30, tailColor, bodyColor, eyeSize);
drawFish(centerX - 100, centerY + 20, bodyLength - 20, bodyHeight - 20, tailColor, bodyColor, eyeSize + 10);


// kabobs:

background(186, 145, 20); // wooden table
// plate
fill(255,255,200);
ellipse(200, 200, 350, 350);
// koobideh kabob
fill(100, 0, 0);
ellipse(80,200,50,200);
//joojeh bottom
fill(255, 255, 0);
ellipse(150,300,50,100);
//joojeh middle
ellipse(150,195,50,100);
//joojeh top
ellipse(150,90,50,100);
//rice
fill(255,255,255);
ellipse(270,150,150,150);
//line for spoon
stroke(102, 107, 99);
strokeWeight(10);
line(200,350,200,250);
//spoon head
fill(102,107,99);
ellipse(200,250,15,40);
//fork line
line(250,350,250,260);
//fork head horizontal
line(230,260,270,260);
//fork head vertical left
line(230,260,230,235);
//fork head vertical middle
line(250,260,250,235);
//fork head vertical right
line(270,260,270,235);


// lion:

// lion can get big and small but the ratio of the face stays the same
var faceX = 200;
var faceY = 220;
var faceSize =38;
var hairSize = faceSize;
var eyeSize = 1/7*faceSize;
var mouthWidth = 1/3*faceSize;
var mouthHeight = 5/80*faceSize;
var mouthSize = mouthHeight+mouthWidth;

// when the lion attacks the whole face gets big
draw = function() {
    background(207, 254, 255);
    fill(240, 209, 36);
    fill(100,0,0);
    ellipse(faceX, faceY-3/5*faceSize, hairSize, hairSize); // hair

    var eyeposition1=faceX-6/20*faceSize;
    var eyeposition2=faceX-1/2*faceSize;
    var eyeposition3=faceX-12/20*faceSize;
    var eyeposition4=faceX-11/20*faceSize;
    var eyeposition5=faceX-8/20*faceSize;
    var eyeposition6=faceX-2/20*faceSize;
    var eyeposition7=faceX+3/20*faceSize;
    var eyeposition8=faceX+9/20*faceSize;
    var eyeposition9=faceX+23/40*faceSize;
    var eyeposition10=faceX+11/20*faceSize;
    var eyeposition11=faceX+10/20*faceSize;
    var eyeposition12=faceX+10/30*faceSize;

    ellipse(eyeposition1, faceY-1/2*faceSize, hairSize, hairSize); // hair
    ellipse(eyeposition2, faceY-1/3*faceSize, hairSize, hairSize); // hair
    ellipse(eyeposition3, faceY-1/10*faceSize, hairSize, hairSize); // hair
    ellipse(eyeposition4, faceY+1/4*faceSize, hairSize, hairSize); // hair
    ellipse(eyeposition5, faceY+1/2*faceSize, hairSize, hairSize); // hair
    ellipse(eyeposition6, faceY+2/3*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition7, faceY+2/3*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition8, faceY+1/2*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition9, faceY+1/10*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition10, faceY-1/5*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition11, faceY-1/3*faceSize, hairSize,hairSize); // hair
    ellipse(eyeposition12, faceY-1/2*faceSize, hairSize,hairSize); // hair
    fill(240, 209, 36);
    ellipse(faceX, faceY, faceSize, faceSize); // face
    fill(0, 0, 0);
    ellipse(faceX-1/6*faceSize,faceY-1/7*faceSize,eyeSize,eyeSize);//left eye
    ellipse(faceX+1/6*faceSize,faceY-1/7*faceSize,eyeSize,eyeSize);//right eye
    ellipse(faceX,faceY+1/7*faceSize,mouthWidth,mouthHeight); //mouth
    mouthSize = mouthWidth+=0.4;
    mouthSize = mouthHeight+=0.1;
    faceSize = faceSize+=1;
    hairSize = hairSize+=1;
    eyeSize = eyeSize+=0.3;
};

