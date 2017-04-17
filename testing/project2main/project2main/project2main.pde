// Project 2 - CS422
// Kevin Tang, Lubna Mirza, Yordan Machin, Ibrahiem Mohammad
// Glass+ Smart Mirror Interface


// screen images
PImage basic_background, 
       basic_background2, 
       alerts, 
       login, 
       weather, 
       main, 
       accounts,
       guestmain,
       numpad;
PImage current, off;


PImage chicken;
Pic button;

// Flags
int mainflag = 1;
int loginflag= 0;
int userprofile1flag = 0;
int guestmainflag = 0;
int numpadflag = 0;
int newuserflag = 0;
int existinguserflag = 0;
int afteralertsflag = 0;
int calendarflag = 0;
int newsflag = 0;
int healthflag = 0;
int planflag = 0;
int shopflag = 0;
int weatherflag = 0;
int healthtoothbrushflag = 0;
int socialtwitterflag = 0;
int socialfacebookflag = 0;
int socialredditflag = 0;
int mediaflag = 0;
int socialsettingsflag = 0;
int settingsflag = 0;
int profileflag = 0;
int newsettingsflag = 0;
int mediamusicflag = 0;
int mediasettingsflag = 0;
int locationsettingsflag = 0;
int languagesettingsflag = 0;
int socialinstagramflag = 0;
int waterusagesettingsflag = 0;
int offflag = 0;

// login button dimensions
int loginx = 320;
int loginy = 1150;
int loginw = 710;
int loginh = 200;
  
// newuser button dimensions
int nuserx = 1680;
int nusery = 1150;
int nuserw = 710;
int nuserh = 200;

// user profile1 button dimensions
int up1x = 330;
int up1y = 440;
int up1w = 660;
int up1h = 650;

// guest button dimensions
int guestx = 1000;
int guesty = 1150;
int guestw = 710;
int guesth = 200;

// back button on numpad
int back1x = 540;
int back1y = 950;
int back1w = 340;
int back1h = 200;

// login button on numpad
int login2x = 1700;
int login2y = 955;
int login2w = 700;
int login2h = 200;

// numpad buttons
//int zerox

void setup(){
  size(2732,1536);
  main = loadImage("Accounts.jpg");
  accounts = loadImage("Accounts2.jpg");
  alerts = loadImage("Alerts.jpg");
  guestmain = loadImage("Guest.jpg");
  numpad = loadImage("Login.jpg");
  
  chicken = loadImage("chicken.jpg");
  button = new Pic(400,10,10,10,"chicken",chicken);
  
  current = main;
  
}

void draw(){
  background(current);

  button.display(); 
  if (loginflag == 1){
    current = accounts;
  }
  
  if (userprofile1flag == 1){
    current = alerts;
  }
  
  if (numpadflag == 1){
    current = numpad;
  }
  
  if (guestmainflag == 1){
    current = guestmain;
  }
  
  
}

boolean isMouseInRange(int x, int y, int w, int h){
    
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h){
      return true;
    }
    else return false; 
  }

void mouseClicked(){
  
  
  // take into account scope of screen and scope of button
  // if (screen1)
  //    if (button 1 && clicked = false) clicked = true
  //    else if (button 1 && clicked = true) clicked = false 
  
  
  if (mainflag == 1){
    // guest button pressing/unpressing
    if (isMouseInRange(loginx, loginy, loginw, loginh)){
      loginflag = 1;
      mainflag = 0;
    }
    if (isMouseInRange(nuserx, nusery, nuserw, nuserh)){
      newuserflag = 1;
      mainflag = 0;
    }
  }
  
  if (loginflag == 1){
    if (isMouseInRange(up1x,up1y,up1w,up1h)){
      numpadflag = 1;
      loginflag = 0;
    }
    if (isMouseInRange(guestx,guesty,guestw,guesth)){
      guestmainflag = 1;
      loginflag = 0;
    }
    
    if (numpadflag == 1){
      //todo
      // show alerts page
      if (isMouseInRange(back1x,back1y,back1w,back1h)){
        loginflag = 1;
        numpadflag = 0;
      }
    }
   
  }
  
  //if (newuserflag == 1){//todo
  //}
  
}

class Button {
  int x, y, w, h;
  String message;
  
  Button(int ix, int iy, int iw, int ih, String tempM) {
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    message = tempM;
  }
  
  boolean checkIfHover() {
  if ((mouseX > (this.x)) && (mouseX < (this.x) + (this.w)) 
        && (mouseY > (this.y)) && (mouseY < (this.y) +(this.h))) {
    return true;
  } 
  return false;
  }
  
  void display() {
    rect (x, y, w, h);
  }
}

class Pic extends Button {
  PImage image;
  
  Pic(int ix, int iy, int iw, int ih, String tempM, PImage iimg) 
  {
    super(ix, iy, iw, ih, tempM);
    image = iimg;
  }
  
  void display()
  {
    image(this.image,x,y);
  }
}