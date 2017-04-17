// Project 2 - CS422
// Kevin Tang, Lubna Mirza, Yordan Machin, Ibrahiem Mohammad
// Glass+ Smart Mirror Interface


// screen images
PImage alerts, 
       login, 
       weather, 
       main, 
       accounts,
       guestmain,
       userprofile1;
PImage current, off;

// Flags
int mainflag = 1;
int loginflag= 0;
int userprofile1flag = 0;
int userprofile1mainflag = 0;
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

int planx = 570;
int plany = 1400;
int planw = 250;
int planh = 100;

int newsx = 870;
int newsy = 1400;
int newsw = 250;
int newsh = 100;

int healthx = 1190;
int healthy = 1400;
int healthw = 300;
int healthh = 100;

int socialx = 1590;
int socialy = 1400;
int socialw = 250;
int socialh = 100;

int mediax = 1900;
int mediay = 1400;
int mediaw = 250;
int mediah = 100;

int settingsx = 40;
int settingsy = 1380;
int settingsw = 150;
int settingsh = 150;

int userprofilesx = 2560;
int userprofilesy = 1380;
int userprofilesxw = 150;
int userprofilesxh = 150;

int weatherx = 50;
int weathery = 30;
int weatherw = 430;
int weatherh = 180;

int timex = 2250;
int timey = 30;
int timew = 460;
int timeh = 230;


void setup(){
  size(2732,1536);
  main = loadImage("Main.jpg");
  accounts = loadImage("Accounts2.jpg");
  alerts = loadImage("Alerts.jpg");
  guestmain = loadImage("Guest.jpg");
  userprofile1 = loadImage("BasicBackground2.jpg");
  
  current = main;
  
  //if (loadStrings("users.txt") == null){
  //  // no users exist
  //}
  //else users = loadStrings("users.txt");
  
}

void draw(){
  background(current);
  //rect(2250,30,460,230);

  if (loginflag == 1){
    current = accounts;  
  }
  
  else if (userprofile1flag == 1){
    current = userprofile1;
  }
  
  else if (userprofile1mainflag == 1){
    current = alerts;
  }
  
  else if (guestmainflag == 1){
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
      userprofile1flag = 1;
      loginflag = 0;
    }
    if (isMouseInRange(guestx,guesty,guestw,guesth)){
      guestmainflag = 1;
      loginflag = 0;
    }
       
  }
  
  if (userprofile1flag == 1){
    userprofile1mainflag = 1;
    userprofile1flag = 0;
  }
  
  
}