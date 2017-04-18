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
       cart,
       brush,
       music,
       twitter,
       insta,
       facebook,
       reddit;
PImage current, off;

// Flags
int mainflag = 1;
int loginflag= 0;
int userprofile1flag = 0;
int guestmainflag = 0;
int newuserflag = 0;
int usersflag = 0;
int cartflag = 0;
int uberflag = 0;
int mapsflag = 0;
int musicflag = 0;
int spotifyflag = 0;
int existinguserflag = 0;
int afteralertsflag = 0;
int calendarflag = 0;
int socialflag = 0;
int newsflag = 0;
int healthflag = 0;
int planflag = 0;
int weatherflag = 0;
int brushflag = 0;
int twitterflag = 0;
int facebookflag = 0;
int redditflag = 0;
int instaflag = 0;
int mediaflag = 0;
int socialsettingsflag = 0;
int settingsflag = 0;
int profileflag = 0;
int newsettingsflag = 0;
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
int mapsy = 560;
int mapsw = 130;
int mapsh = 180;

int cartx = 100;
int carty = 760;
int cartw = 130;
int carth = 180;

int weather2x=100;
int weather2y=760;
int weather2w=130;
int weather2h=180;

int calendar2x=100;
int calendar2y=1160;
int calendar2w=130;
int calendar2h=180;

int brushx = 60;
int brushy = 960;
int brushw = 220;
int brushh = 200;

int musicx = 60;
int musicy = 960;
int musicw = 220;
int musich = 200;

int spotifyx = 60;
int spotifyy = 740;
int spotifyw = 220;
int spotifyh = 200;

int facebookx = 75;
int facebooky = 386;
int facebookw = 187;
int facebookh = 153;

int instax = 75;
int instay = 574;
int instaw = 187;
int instah = 153;

int twitterx = 75;
int twittery = 768;
int twitterw = 187;
int twitterh = 153;

int redditx = 75;
int reddity = 976;
int redditw = 187;
int reddith = 153;


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
  brush = loadImage("Toothbrush.jpg");
  music = loadImage("Music.jpg");
  twitter = loadImage("Twitter.jpg");
  reddit = loadImage("Reddit.jpg");
  facebook = loadImage("Facebook.jpg");
  insta = loadImage("Instagram.jpg");
  
  
  current = main;
  
}

void draw(){
  background(current);
  //rect(60,740,220,200);

  //done
  if (loginflag == 1){
    current = accounts;  
  }
  //done
  else if (userprofile1flag == 1){
    current = userprofile1;
  }
  //todo
  else if (guestmainflag == 1){
    current = guestmain;
  }
  //done
  else if (calendarflag == 1){
    current = calendar;
  }
  //todo
  else if (settingsflag == 1){
    current = settings;
  }
  //done
  else if (weatherflag == 1){
    current = weather;
  }
  //done
  else if (usersflag == 1){
    current = users;
  }
  //done
  else if (planflag == 1){
    current = plan;
  }
  //done
  else if (newsflag == 1){
    current = news;
  }
  //done
  else if (healthflag == 1){
    current = health;
  }
  //done
  else if (socialflag == 1){
    current = social;
  }
  //done
  else if (mediaflag == 1){
    current = media;
  }
  
  else if (uberflag == 1){
    current = uber;
  }
  else if (cartflag == 1){
    current = cart;
  }
  else if (mapsflag == 1){
    current = maps;
  }
  else if (brushflag == 1){
    current = brush;
  }
  else if (musicflag == 1){
    current = music;  
  }
  else if (spotifyflag == 1){
    current = media;
  }
  else if (twitterflag == 1){
    current = twitter;
  }
  else if (instaflag == 1){
    current = insta;
  }
  else if (redditflag == 1){
    current = reddit;
  }
  else if (facebookflag == 1){
    current = facebook;
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
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      userprofile1flag = 0;
    }
    
  }
  
  if (planflag == 1){
    if (isMouseInRange(uberx,ubery,uberw,uberh)){
      uberflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(mapsx,mapsy,mapsw,mapsh)){
      mapsflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(cartx,carty,cartw,carth)){
      cartflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(weather2x,weather2y,weather2w,weather2h)){
      weatherflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(calendar2x,calendar2y,calendar2w,calendar2h)){
      calendarflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      planflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      planflag = 0;
    }    
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      planflag = 0;
    }
  }
  
  if (newsflag == 1){
    if (isMouseInRange(calendar2x,calendar2y,calendar2w,calendar2h)){
      calendarflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      newsflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      newsflag = 0;
    }
    
  }
  
  if (healthflag == 1){
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      healthflag = 0;
    }  
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      healthflag = 0;
    }
    if (isMouseInRange(brushx,brushy,brushw,brushh)){
      brushflag = 1;
      healthflag = 0;
    }
  }
  
  if (mediaflag == 1){
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      mediaflag = 0;
    }  
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(musicx,musicy,musicw,musich)){
      musicflag = 1;
      mediaflag = 0;
    }
    if (isMouseInRange(spotifyx,spotifyy,spotifyw,spotifyh)){
      spotifyflag = 1;
      mediaflag = 0;
    }
  }
  
  if (socialflag == 1){
     if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      socialflag = 0;
    }  
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(twitterx,twittery,twitterw,twitterh)){
      twitterflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(facebookx,facebooky,facebookw,facebookh)){
      facebookflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(instax,instay,instaw,instah)){
      instaflag = 1;
      socialflag = 0;
    }
    if (isMouseInRange(redditx,reddity,redditw,reddith)){
      redditflag = 1;
      socialflag = 0;
    }
  }
  
  if (calendarflag == 1){
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      calendarflag = 0;
    }  
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      calendarflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      calendarflag = 0;
    }
  }
  
  if (weatherflag == 1){
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      weatherflag = 0;
    }
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      weatherflag = 0;
    }
  }
  
  if (usersflag == 1){
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(planx,plany,planw,planh)){
      planflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      usersflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      usersflag = 0;
    }
    
  }
  if (uberflag == 1){
      
    if (isMouseInRange(mapsx,mapsy,mapsw,mapsh)){
      mapsflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(cartx,carty,cartw,carth)){
      cartflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(weather2x,weather2y,weather2w,weather2h)){
      weatherflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(calendar2x,calendar2y,calendar2w,calendar2h)){
      calendarflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(timex,timey,timew,timeh)){
      calendarflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(settingsx,settingsy,settingsw,settingsh)){
      settingsflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(weatherx,weathery,weatherw,weatherh)){
      weatherflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(newsx,newsy,newsw,newsh)){
      newsflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(mediax,mediay,mediaw,mediah)){
      mediaflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(healthx,healthy,healthw,healthh)){
      healthflag = 1;
      uberflag = 0;
    }
    if (isMouseInRange(socialx,socialy,socialw,socialh)){
      socialflag = 1;
      uberflag = 0;
    }    
    if (isMouseInRange(userprofilesx,userprofilesy,userprofilesw,userprofilesh)){
      usersflag = 1;
      uberflag = 0;
    }
  }
  if (cartflag == 1){
    current = cart;
  }
  if (mapsflag == 1){
    current = maps;
  }
  if (brushflag == 1){
    current = brush;
  }
  if (musicflag == 1){
    current = music;  
  }
  if (spotifyflag == 1){
    current = media;
  }
  if (twitterflag == 1){
    current = twitter;
  }
  if (instaflag == 1){
    current = insta;
  }
  if (redditflag == 1){
    current = reddit;
  }
  if (facebookflag == 1){
    current = facebook;
  }
  
}