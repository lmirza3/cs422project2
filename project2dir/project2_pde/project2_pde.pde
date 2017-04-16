// Project 2 - CS422
// Kevin Tang, Lubna Mirza, Yordan Machin, Ibrahiem Mohammad
// Glass+ Smart Mirror Interface


// screen images
PImage basic_background, basic_background2, alerts, login, weather, accounts, accounts2;

//Button images
PImage us_sample, ps_sample;

//Buttons
//ImageButton button_s;
Button test, test2;
PShape p;

//Flags
boolean mouseClicked = false;

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
  
  int x = 100;
  int y = 100;
  int w = 25;
  int h = 25;
  
  //button_s = new ImageButton(x,y,w,h,us_sample,ps_sample);
  test = new Button(x,y,w,h);
  test2 = new Button(150,150,25,25);
  
}

void draw(){

  //button_s.action_press();
  //button_s.showImgButton();
  test.action_press();
  test.showButton();
  
  test2.action_press();
  test2.showButton();

  
  
}

void mouseClicked(){
  
  if (mouseClicked) mouseClicked = false;
  else mouseClicked = true;
  
}


class Button {
  
  PShape button;
  
  int x, y, w, h;
  
  color pressed = color(255,159,204);
  color unpressed = color(255,204,229);
  color bColor;
  
  boolean isMouseInRange = false;
  boolean isPressed = false;
  
  boolean isPressedNew = false;
  
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
  
  void pressed(){
    
    if (isMouseInRange && mouseClicked){
      isPressed = true;
    }
    else if (isMouseInRange && !mouseClicked) {
      isPressed = false;
    }
  }
  
  void showButton(){
    shape(button);
    button.setFill(bColor);
  }
  
   void action_press(){
  
    updateMouseRange();
    
    pressed();
    
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
  //ImageButton guestBtn, addUserBtn, loginBtn;
  Numpad numpad;  
  
}

class ActivityScreens extends Screen {}

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