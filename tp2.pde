 
int numFrame = 44;
int frame = 0;
PImage[] images = new PImage[numFrame];
int posY;
int zimb, voice1, ZAct;
int MuSc, voice2, muscAct;
int nala, voice3, nalaAct;
int hakuna, voice4, hakunaAct;
int RaZa, voice5, razaAct;
int hyeSa, voice6, hyesaAct, banzai, ed;
int cast, name;
int music, nmusic, songs;
int tsong1, arr1, perf1;
int tsong2, arr2, perf2;
int tsong3, arr3, perf3;
int r, f, p, t, e;
char a;
char b;
PFont font;
PFont font2;


void setup() {
  size(800, 600);
  background(0);

  frameRate(6);
  for (int i =0; i < images.length; i++) {
    String imageName = "lk_ " + i + ".png";
    images[i] = loadImage(imageName);
  }



  font = loadFont("TimesNewRomanPSMT-90.vlw");
  a = 'L';
  b = 'G';

  font2 = loadFont("NeulandOpti-Light-48.vlw");

  posY = height + 200;
  zimb = height + 230;
  voice1 =height + 260;
  ZAct = height + 290;
  MuSc = height + 360;
  voice2 = height + 390;
  muscAct = height + 420;
  nala = height + 490;
  voice3 = height + 520;
  nalaAct = height + 550;
  hakuna = height + 620;
  voice4 = height + 650;
  hakunaAct = height + 680;
  RaZa = height + 750;
  voice5 = height + 780;
  razaAct = height + 810;
  hyeSa = height + 880;
  voice6 = height + 910;
  hyesaAct= height + 940;
  banzai = height + 970;
  ed = height + 1000;
  cast = 250;
  name = 310;
  music = 2000;
  nmusic = 2030;
  songs = 2400;
  tsong1 = 2430;
  perf1 = 2460;
  arr1 = 2480;
  tsong2 = 2550;
  perf2 = 2580;
  arr2 = 2600;
  tsong3 = 2670;
  perf3 = 2700;
  arr3 = 2720;
  r = 3130;
  f = 3160;
  p = 3190;
  t = 3690;
  e = 3730;
}

void draw() {

  int frame = frameCount % numFrame;
  image(images[frame], 0, 0);
  println(frameCount);

//-------------------------------------------------------------------
if (frame == 43){
  frameRate(3);
}

  if ((frameCount%44 < frameCount%45) && (frameCount == 44)) {

    background(0);
    fill(#B7060B);
    textFont(font);
    textSize(40);
    text("T H E", 350, 240);
    textSize(110);
    text("ION KIN", 200, 350);
    textSize(130);
    text(a, 125, 350);
    text(b, 612, 350);

    smooth();
    stroke(240, 40, 40);
    line(200, 260, 600, 260);
    frameRate(0.5);
  }

  if ((frameCount%45 < frameCount%46) && (frameCount == 45)) {
    background(0);
    frameRate(1);
  }
  if (frameCount == 46) { 
    background(0);
    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Directed by", 350, 250);
    textSize(40);
    text("ROGER ALLERS and ROB MINKOFF", 80, 310);
    frameRate(0.5);
  }


  //PANTALLA 3
  if (frameCount ==  47) {
    background(0);

    textFont(font);
    fill(#F0BC2E);
    smooth();
    textSize(33);
    text("Produced by", 340, 250);
    textSize(50);
    text("DON HAHN", 300, 310);
    frameRate(0.5);
  }

  //PANTALLA 4
  if (frameCount == 48) {
    background(0);

    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Screenplay by", 320, 150);
    textSize(50);
    text("IRENE MECCHI", 230, 220);
    textSize(33);
    text("and", 390, 260);
    textSize(50);
    text("JONATHAN ROBERTS", 150, 320);
    textSize(30);
    text("and", 390, 360);
    textSize(50);
    text("LINDA WOOLVERTON", 145, 420);
    frameRate(0.5);
  }

  //PANTALLA 5
  if (frameCount == 49) {
    background(0);

    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Songs by", 360, 200);
    textSize(50);
    text("TIM RICE", 310, 260);
    textSize(33);
    text("and", 400, 300);
    textSize(50);
    text("ELTON JOHN", 260, 350);
    frameRate(0.5);
  }

  //PANTALLA 6
  if (frameCount == 50) {
    background(0);

    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Original Score Composed and Arranged by", 110, 250);
    textSize(50);
    text("HANS ZIMMER", 240, 310);
    frameRate(0.5);
  }

  //PANTALLA 7
  if (frameCount == 51) {
    background(0);

    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Art Direction", 310, 250);
    textSize(50);
    text("ANDY GASKILL", 230, 310 );
    frameRate(0.5);
  }


  //PANTALLA 8
  if (frameCount >= 52) {
    background(0);
    frameRate(0.5);
    fill(#F0BC2E);
    textFont(font);
    textSize(33);
    text("Casting by", 340, cast);
    textSize(50);
    text("BRIAN CHAVANNE", 190, name);
    cast--;
    name--;

    frameRate(30);
    fill(#F0BC2E);
    textFont(font2);
    textSize(35);
    text("CAST", 370, posY);
    textFont(font);
    textSize(25);
    text("YOUNG ZIMBA", 100, zimb); 
    text("ADULT ZIMBA", 530, zimb);
    posY--;
    zimb--;
    textSize(18);
    text("Voice", 170, voice1);
    text("Voice", 600, voice1);
    voice1--;
    textSize(25);
    text("JONATHAN TAYLOR THOMAS", 20, ZAct);
    text("MATHEW BRODERICK", 500, ZAct);
    ZAct--;
    text("MUFASA", 140, MuSc);
    text("SCAR", 590, MuSc);
    MuSc--;
    textSize(18);
    text("Voice", 170, voice2);
    text("Voice", 600, voice2);
    voice2--;
    textSize(25);
    text("JAMES EARL JONES", 80, muscAct);
    text("JEREMY IRONS", 530, muscAct);
    muscAct--;
    textSize(25);
    text("ADULT NALA", 110, nala);
    text("YOUNG NALA", 550, nala);
    nala--;
    textSize(18);
    text("Voice", 170, voice3);
    text("Voice", 600, voice3);
    voice3--;
    textSize(25);
    text("MOIRA KELLY", 110, nalaAct);
    text("NIKETA CALAME", 530, nalaAct);
    nalaAct--;
    textSize(25);
    text("PUMBAA", 140, hakuna);
    text("TIMON", 580, hakuna);
    hakuna--;
    textSize(18);
    text("Voice", 170, voice4);
    text("Voice", 600, voice4);
    voice4--;
    textSize(25);
    text("ERNIE SABELLA", 90, hakunaAct);
    text("NATHAN LANE", 530, hakunaAct);
    hakunaAct--;
    textSize(25);
    text("RAFIKI", 150, RaZa);
    text("ZAZU", 590, RaZa);
    RaZa--;
    textSize(18);
    text("Voice", 170, voice5);
    text("Voice", 600, voice5);
    voice5--;
    textSize(25);
    text("ROBERT GUILLAUME", 60, razaAct);
    text("ROWAN ATKINSON", 510, razaAct);
    razaAct--;
    text("HYENAS", 140, hyeSa);
    text("SARABI", 580, hyeSa);
    hyeSa--;
    textSize(18);
    text("Voices", 170, voice6);
    text("Voice", 600, voice6);
    voice6--;
    textSize(25);
    text("WHOOPI GOLDBERG", 100, hyesaAct);
    text("MADGE SINCLAIR", 520, hyesaAct);
    textSize(20);
    text("Shenzi", 20, hyesaAct);
    hyesaAct--;
    textSize(25);
    text("CHEECH MARIN", 120, banzai);
    text("JIM CUMMINGS", 105, ed);
    textSize(20);
    text("Banzai", 30, banzai);
    text("Ed", 40, ed);
    banzai--;
    ed--;
    //-----------------------------------------------------------
    //MUSIC
    textSize(25);
    text("Music Supervision by", 310, music);
    text("HANS ZIMMER", 330, nmusic);
    music--;
    nmusic--;
    textFont(font2);
    textSize(30);
    text("SONGS", 360, songs);
    songs--;
    textFont(font);
    textSize(20);
    text("'CIRCLE OF THE LIFE'", 90, tsong1);
    text("'I JUST CAN´T WAIT TO BE KING'", 480, tsong1);
    textSize(18);
    text("Performed by Carmen Twillie", 80, perf1);
    text("Performed by Jason Weaver and", 520, perf1);
    text("with 'Nant's Ingoyama' by LeboM.", 70, arr1);
    text("Laura Williams with Rowan Atkinson", 500, arr1);
    tsong1--;
    perf1--;
    arr1--;
    textSize(20);
    text("'BE PREPARED'", 110, tsong2);
    text("'HAKUNA MATATA'", 550, tsong2);
    text("'CAN YOU FEEL THE LOVE TONIGHT'", 250, tsong3);
    textSize(18);
    text("Performed by Jeremy Irons", 90, perf2);
    text("Performed by Nathan Lane, Ernie Sabella,", 480, perf2);
    text("with Whoopi Goldberg and Cheech Marin", 40, arr2);
    text("Jason Weaver and Joseph Williams", 510, arr2);
    text("Performed by Nathan Lane, Ernie Sabella", 280, perf3);
    text("Sally Dworsky, Joseph Williams and Kristle Edwards", 240, arr3);
    tsong2--;
    perf2--;
    arr2--;
    tsong3--;
    perf3--;
    arr3--;
    //-----------------------------------------------------------------
    textSize(20);
    text("In Remembrance of", 350, r);
    text("President of The Walt Disney Company", 270, p);
    textSize(25);
    text("FRANK WELLS", 350, f);
    r--;
    p--;
    f--;
    //----------------------------------
    textSize(35);
    text("THE", 390, t);
    textSize(50);
    text("END", 375, e);
    t--;
    e--;
  } 
  if (mousePressed){
    frameCount = 0;
    frameRate(6); 
  
  }
}
