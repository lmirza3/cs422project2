// Project 2 - CS422
// Kevin Tang, Lubna Mirza, Yordan Machin, Ibrahiem Mohammad
// Glass+ Smart Mirror Interface


// screen images
PImage basic_background, basic_background2, alerts, login, weather, accounts, accounts2;
PImage current, off;

// mouseclick counter
int counter = 0;

// Screens
LoginScreen loginscreen;

//Button images
PImage us_sample, ps_sample;

//Buttons
//ImageButton button_s;
Button test, test2;

// Flags
int testflag = 0;
int loginflag= 1;
int guestmainflag = 0;
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


void setup(){  
   
  size(683,384);
  
  //loading screens
  basic_background = loadImage("screens/basicbackground.jpg");
  basic_background2 = loadImage("screens/basicbackground2.jpg");
  //alerts = loadImage("screens/Alerts.jpg");
  alerts = loadImage("screens/rsz_alerts.jpg");
  login = loadImage("screens/Login.jpg");
  weather = loadImage("screens/Weather.jpg");
  //accounts = loadImage("screens/Accounts.jpg");
  accounts = loadImage("screens/rsz_1accounts.jpg");
  accounts2 = loadImage("screens/Accounts2.jpg");
  off = loadImage("screens/rsz_off.jpg");
  
  us_sample = loadImage("btn_imgs/rsz_solid_blue.png");
  ps_sample = loadImage("btn_imgs/rsz_ff0000.png");
  
  int x = 100;
  int y = 100;
  int w = 25;
  int h = 25;
  
  //button_s = new ImageButton(x,y,w,h,us_sample,ps_sample);
  test = new Button(x,y,w,h);
  test2 = new Button(150,150,25,25);
  
  //initialize at login screen
  current = accounts;
  
  // screens
  loginscreen = new LoginScreen("login");
  
}

void draw(){
  //counter = second();
  //if (counter == 5){
  //  current = off;
  //  offflag = 1;
  //}
  
  background(current);
  loginscreen.showScreen();

  //button_s.action_press();
  //button_s.showImgButton();
  
  if (testflag == 1){
    test.action_press();
    test.showButton();
  
    test2.action_press();
    test2.showButton();
  }
  
  //show login screen
  if (loginflag == 1){
    loginscreen.activateButtons();
  }
  
  // show guest screen
  if (guestmainflag == 1){
    //delay(200);
    //System.out.println("PESHAB");
    current = alerts;
  }
  
  // show new user screen
  if (newuserflag == 1){
    // todo
  }
  
 
  //System.out.println(mouseX + " " + mouseY);

}

void mouseClicked(){
  
  
  // take into account scope of screen and scope of button
  // if (screen1)
  //    if (button 1 && clicked = false) clicked = true
  //    else if (button 1 && clicked = true) clicked = false 
  
  if (test.isMouseInRange(test.x, test.y, test.w, test.h) && test.isPressed == false) {
    test.isPressed = true;
  } else if (test.isMouseInRange(test.x, test.y, test.w, test.h) && test.isPressed == true) {test.isPressed = false;}
  
  //if (offflag == 1 && loginflag == 1){
  //  current = login;
  //  offflag = 0;
  //}
  
  if (loginflag == 1){
    // guest button pressing/unpressing
    if (loginscreen.guest.isMouseInRange(loginscreen.guestx, loginscreen.guesty, loginscreen.guestw, loginscreen.guesth) && loginscreen.guest.isPressed == false){
      loginscreen.guest.isPressed = true;
      guestmainflag = 1;
      loginflag = 0;
      loginscreen.clearButtons();
    } else if (loginscreen.guest.isMouseInRange(loginscreen.guestx, loginscreen.guesty, loginscreen.guestw, loginscreen.guesth) && 
    loginscreen.guest.isPressed == true){loginscreen.guest.isPressed = false; }
    
    // add user button pressing/unpressing
    if (loginscreen.adduser.isMouseInRange(loginscreen.nuserx, loginscreen.nusery, loginscreen.nuserw, loginscreen.nuserh) 
    && loginscreen.adduser.isPressed == false){
      loginscreen.adduser.isPressed = true;
      newuserflag = 1;
      loginflag = 0;
      //delay(200);
    } else if (loginscreen.adduser.isMouseInRange(loginscreen.nuserx, loginscreen.nusery, loginscreen.nuserw, loginscreen.nuserh) && 
    loginscreen.adduser.isPressed == true){
      loginscreen.adduser.isPressed = false;
      //newuserflag = 1;
      //loginflag = 1;
    }
  }
  
  // handle buttons on guest screen
  if (guestmainflag == 1){
    // todo
  }
  
  // handle buttons on new user screen
  if (newuserflag == 1){
    // todo
  }
   
  
}


class Button {
  
  PShape button;
  
  int x, y, w, h;
  
  color pressed = color(255,255,255,45);
  color unpressed = color(255,255,255,0);
  color bColor;
  
  boolean isMouseInRange = false;
  boolean isPressed = false;
  
  Button(int nx, int ny, int nw, int nh){
    this.x = nx;
    this.y = ny;
    this.w = nw;
    this.h = nh;
    this.button = createShape(RECT,x,y,w,h);
  }
  
  PShape getButton(){
    return button;
  }
  
  void setVisibility(boolean visible){
    button.setVisible(visible);
  }
  
  //void pressed(){
    
  //  if (isMouseInRange && isClicked){
  //    isPressed = true;
  //  }
  //  else {
  //    isPressed = false;
  //  }
  //}
  
   void showButton(){
      shape(button);
      button.setFill(bColor);
      button.setStroke(color(255,255,255,0));
   }
  
   void action_press(){
  
    //updateMouseRange();
    
    //pressed();
    
    if (isPressed) bColor = pressed;
    else bColor = unpressed;
    
   }
 
  void updateMouseRange(){
  
    if (isMouseInRange(x,y,w,h)) isMouseInRange = true;
    else isMouseInRange = false;
     
  }
  
  boolean isMouseInRange(int x, int y, int w, int h){
    
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h){
      return true;
    }
    else return false; 
  }  
}

//class ImageButton extends Button {
   
//  PImage unpressed_state;
//  PImage pressed_state;
//  PImage toShow;
  
//  ImageButton(int new_x, int new_y, int new_w, int new_h, PImage unpressed,
//  PImage pressed){
    
//    this.x = new_x;
//    this.y = new_y;
//    this.w = new_w;
//    this.h = new_h;
//    this.unpressed_state = unpressed;
//    this.pressed_state = pressed;
//  }
  
//  void action_press(){
  
//    updateMouseRange();
    
//    pressed();
    
//    if (isPressed) toShow = pressed_state;
//    else toShow = unpressed_state;
    
//  }
  
//  void updateMouseRange(){
  
//    if (isMouseInRange(x,y,w,h)) isMouseInRange = true;
//    else isMouseInRange = false;
     
//  }
  
//  void showImgButton(){
//    image(toShow, x, y);
//  }

//}


class Screen extends PShape{
  
  String name;
    
}

class LoginScreen extends Screen {

  String title;
  
  Button guest, adduser;
  Numpad numpad;  
  
  // guest button dimenstions
  int guestx = 85;
  int guesty = 285;
  int guestw = 172;
  int guesth = 52;
  
  // adduser button dimensions
  int nuserx = 425;
  int nusery = 286;
  int nuserw = 173;
  int nuserh = 49;
  
  LoginScreen(String n){
  
    this.title = n;
    this.guest = new Button(guestx, guesty, guestw, guesth);
    this.adduser = new Button(nuserx, nusery, nuserw, nuserh);
    //this.numpad = np;
  
  }
  
  void activateButtons(){
    this.guest.getButton().setVisible(true);
    this.adduser.getButton().setVisible(true);
  }
  
 void clearButtons(){
   this.guest.getButton().setVisible(false);
   this.adduser.getButton().setVisible(false);
 }
 
 void showScreen(){
   this.guest.action_press(); this.guest.showButton();
   this.adduser.action_press(); this.adduser.showButton();
 }
  
}

class ActivityScreens extends Screen {

   

}

class SettingsScreen extends Screen {}

class Numpad {}

class Textfield {

  String text;
  boolean isVisible = true;
  //ImageButton backArrowBtn;
  PImage field;
  
  void addText(int x, int y) {
    text(this.text, x, y);
  }
  
  void setTextVisibility (boolean visible) {
    if (visible) {fill(0,0,0); this.isVisible = true;}
    else {fill(255,255,255); this.isVisible = false;}
  }
  
  void setField(int x, int y) {
    image(this.field, x, y);
  }
  
  //void setArrowBtn (ImageButton backArrow){
  //  this.backArrowBtn = backArrow;
  //}
  
}