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
       userprofile1,
       calendar,
       settings,
       users,
       plan,
       news,
       health,
       media,
       social,
       uber,
       maps,
       cart;
PImage current, off;

// Flags
int mainflag = 1;
int loginflag= 0;
int userprofile1flag = 0;
int guestmainflag = 0;
int newuserflag = 0;
int usersflag = 0;
int existinguserflag = 0;
int afteralertsflag = 0;
int calendarflag = 0;
int socialflag = 0;
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
int userprofilesw = 150;
int userprofilesh = 150;

int weatherx = 50;
int weathery = 30;
int weatherw = 430;
int weatherh = 180;

int timex = 2250;
int timey = 30;
int timew = 460;
int timeh = 230;

int uberx = 100;
int ubery = 350;
int uberw = 130;
int uberh = 190;

int mapsx = 100;
int mapsy = 350;
int mapsw = 130;
int mapsh = 190;

int cartx = 100;
int carty = 350;
int cartw = 130;
int carth = 190;



void setup(){
  size(2732,1536);
  main = loadImage("Main.jpg");
  accounts = loadImage("Accounts2.jpg");
  alerts = loadImage("Alerts.jpg");
  guestmain = loadImage("Guest.jpg");
  userprofile1 = loadImage("BasicBackground2.jpg");
  calendar = loadImage("Calendar.jpg");
  settings = loadImage("Settings.jpg");
  users = loadImage("Profile.jpg");
  weather = loadImage("Weather.jpg");
  plan = loadImage("Plan.jpg");
  social = loadImage("Social.jpg");
  news = loadImage("News.jpg");
  health = loadImage("Health.jpg");
  media = loadImage("Spotify.jpg");
  uber = loadImage("Uber.jpg");
  maps = loadImage("maps.jpg");
  cart = loadImage("Shop.jpg");
  
  
  current = main;
  
}

void draw(){
  background(current);
  //rect(100,350,130,190);

  if (loginflag == 1){
    current = accounts;  
  }
  
  else if (userprofile1flag == 1){
    current = userprofile1;
  }
  
  else if (guestmainflag == 1){
    current = guestmain;
  }
  
  else if (calendarflag == 1){
    current = calendar;
  }
  
  else if (settingsflag == 1){
    current = settings;
  }
  else if (weatherflag == 1){
    current = weather;
  }
  else if (usersflag == 1){
    current = users;
  }
  else if (planflag == 1){
    current = plan;
  }
  else if (newsflag == 1){
    current = news;
  }
  else if (healthflag == 1){
    current = health;
  }
  else if (socialflag == 1){
    current = social;
  }
  else if (mediaflag == 1){
    current = media;
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
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      userprofile1flag = 0;
    }  
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      userprofile1flag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      userprofile1flag = 0;
    }
    
  }
  
  if (planflag == 1){
    //do something
  }
  
  
}