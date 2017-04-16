// Project 2 - CS422
// Kevin Tang, Lubna Mirza, Yordan Machin, Ibrahiem Mohammad
// Glass+ Smart Mirror Interface


// screen images
PImage basic_background, basic_background2, alerts, login, weather, accounts, accounts2;

//Button images
PImage us_sample, ps_sample;

//Buttons
ImageButton button_s;

void setup(){  
   
  size(400,400);
  
  //loading screens
  basic_background = loadImage("screens/basicbackground.jpg");
  basic_background2 = loadImage("screens/basicbackground2.jpg");
  alerts = loadImage("screens/Alerts.jpg");
  login = loadImage("screens/Login.jpg");
  weather = loadImage("screens/Weather.jpg");
  accounts = loadImage("screens/Accounts.jpg");
  accounts2 = loadImage("screens/Accounts2.jpg");
  
  us_sample = loadImage("btn_imgs/rsz_solid_blue.png");
  ps_sample = loadImage("btn_imgs/rsz_ff0000.png");
  
  int x = width/2;
  int y = height/2;
  int w = us_sample.width;
  int h = us_sample.height;
  
  button_s = new ImageButton(x,y,w,h,us_sample,ps_sample);
  
  
}

void draw(){

  button_s.action_press();
  button_s.showImgButton();
  
}

class Button {
  
  int x, y, w, h;
  
  color unpressed, pressed;
  
  boolean isMouseInRange = false;
  boolean isPressed = false;
  
  void pressed(){
    
    if (isMouseInRange && mousePressed){
      isPressed = true;
    }
    else {
      isPressed = false;
    }
  }
  
  boolean isMouseInRange(int x, int y, int w, int h){
    
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h){
      return true;
    }
    else return false; 
  }  
}

class ImageButton extends Button {

   
  PImage unpressed_state;
  PImage pressed_state;
  PImage toShow;
  
  ImageButton(int new_x, int new_y, int new_w, int new_h, PImage unpressed,
  PImage pressed){
    
    this.x = new_x;
    this.y = new_y;
    this.w = new_w;
    this.h = new_h;
    this.unpressed_state = unpressed;
    this.pressed_state = pressed;
  }
  
  void action_press(){
  
    updateMouseRange();
    
    pressed();
    
    if (isPressed) toShow = pressed_state;
    else toShow = unpressed_state;
    
  }
  
  void updateMouseRange(){
  
    if (isMouseInRange(x,y,w,h)) isMouseInRange = true;
    else isMouseInRange = false;
     
  }
  
  void showImgButton(){
    image(toShow, x, y);
  }
    
  
  

}


class Screen extends PShape{
  
  String name;
  
  
}

class LoginScreen extends Screen {

  String title;
  ImageButton guestBtn, addUserBtn, loginBtn;
  Numpad numpad;
  
  
  
  
}

class ActivityScreens extends Screen {}

class SettingsScreen extends Screen {}

class Numpad {}

class Textfield {

  String text;
  boolean isVisible = true;
  ImageButton backArrowBtn;
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
  
  void setArrowBtn (ImageButton backArrow){
    this.backArrowBtn = backArrow;
  }
  
}