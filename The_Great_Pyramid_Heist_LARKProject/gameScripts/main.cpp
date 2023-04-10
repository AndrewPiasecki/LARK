#include <cstdlib>
#include <iostream>

using namespace std;

int main(void) {
int dagger = rand() % 2 + 1;
int battleAxe = 3;
int mace = rand() % 2 + 3;
int bow = 5;
int javelin = 6;
int spear = 7;
int Khopesh = rand() % 8;
int butchersKnife = rand() % 4 + 6;

int defeat = 0;
static int health = 20;
static int mammothCounter;
int stun = rand() % 2;
static int stunnedOrNot;
char selection;
static int poisonCounter = 0;
static int Apophis = 50;
char weaponSelection;
char clothingSelection;
int yourTurn = true;
int healingPotion = (rand() % 6) + 1;
int maskOn = 0;
int chargeDMG = (rand() % 9) + 3;
int poison = (rand() % 3) + 1;

cout << "You walk into a room and sense that all your resistance you have "
        "gathered is somehow blocked. You feel... naked and as you look "
        "around, you see a very large staff looking object"
     << endl;
cout << ".\n.\n.\n.\n.\n\n" << endl;

cout << "Upon further inspection, it turns out to be a 20 foot tall SNAKE "
        "looking figure\n"
     << endl;
cout << "With a green looking drool ozzing from its teeth, you hear a loud "
        "rattle like sound.\nAt that moment, the door that you came through "
        "is suddenly shut and there is only one way out... \n"
     << endl;

cout << "Who daressssss come into the chambersssss of Apophissssss\n" << endl;
cout << "Without giving you a moment to answer, Apophis puts his eyes upon "
        "you and says\n "
     << endl;

cout << "\"AHHHHHH ... My breakfeast! About time\" \n\n\n\n\n" << endl;
while (Apophis > 0)

{
while (yourTurn == true) {
if (Apophis <= 1) {
cout << "You have defeated Apophis\n" << endl;
cout << "On his body, you find the password to the chest: \"SHAPESHIFT\"" << endl;
cout << "Use the command (Ctrl + C) to exit the battlefield" << endl;
yourTurn = false;
break;
}
if (health <= 1) {
cout << "You have fallen over, or so you have thought. As you faint out of "
        "existance, you feel a godlike prescence grab your sholder and humm "
        "you a chant of healing.\n\n You feel reinvigorated, ready to fight "
        "once more as Apophis is very angry with the turn of event.\n"
     << endl;
health = 30;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n\n\n" << endl;

} else {
if (poisonCounter == 1) {
health -= (rand() % 3) + 1;
poisonCounter = 0;
}

if (stunnedOrNot == 1) {
cout << "You are stunned, but you get up right before Apophis "
        "attacks once again\n"
     << endl;
stunnedOrNot = 0;
yourTurn = false;

} else {
cout << "What will you do" << endl;
cout << "A - Attack" << endl;
cout << "B - Shield" << endl;
cout << "C - Use Health Potion" << endl;
cout << "D - Put on an artical of clothing" << endl;
cout << "E - Try to talk reason to the large snake" << endl;

cin >> selection;
cout << "\n\n";

if (selection == 'a' || selection == 'A') {
cout << "What weapon will you chose from your arsenal?" << endl;
cout << "A - Dagger" << endl;
cout << "B - Battle Axe" << endl;
cout << "C - Mace" << endl;
cout << "D - Bow" << endl;
cout << "E - Javelin" << endl;
cout << "F - Spear" << endl;
cout << "G - Khopesh" << endl;
cout << "H - Butcher's Knife" << endl;

cin >> weaponSelection;

if (weaponSelection == 'a' || weaponSelection == 'A') {
cout << "\nYou take out your small dagger and try to poke apophis\n" << endl;
Apophis -= dagger;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'b' || weaponSelection == 'B') {
cout << "\nYou struggle to take out your Battle Axe, but with the momenteum of "
        "grabbing it, you swing it at Apophis\n"
     << endl;
Apophis -= battleAxe;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'c' || weaponSelection == 'C') {
cout << "\nAs you reach into your bag, you feel your inner caveman scream as "
        "you wield your massive, 3 foot, mace and you swing it with all your "
        "might!!\n"
     << endl;
Apophis -= mace;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'd' || weaponSelection == 'D') {
cout << "\nFeeling like you shouldn't get close to the massive creature before "
        "you, you take out your bow and shoot a volley of arrows\n"
     << endl;
Apophis -= bow;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'e' || weaponSelection == 'E') {
cout << "\nYou take out your Spear and instead of going close, you just throw "
        "it at Apophis \n"
     << endl;
Apophis -= javelin;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'f' || weaponSelection == 'F') {
cout << "\nYou take out your Spear, and instead of throwing it you want to hug "
        "Apophis so you go charging in and poke him with your small stick\n"
     << endl;
Apophis -= spear;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'g' || weaponSelection == 'G') {
cout << "\nFeeling like you own the world, you pull out your Khopesh and "
        "BLINDLY swing it, hoping to hit the enemy\n"
     << endl;
Apophis -= Khopesh;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (weaponSelection == 'h' || weaponSelection == 'H') {
cout << "\nYou take out your smallest weapon in the arsenal, and Apophis is "
        "laughing, until you swing from 20 feet away and the sharp gust of "
        "wind makes him rethink his decision.\n"
     << endl;
Apophis -= butchersKnife;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}
}

if (selection == 'b' || selection == 'B')  // Shield
{
cout << "\nYou ready your shield for anything to come" << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (selection == 'c' || selection == 'C')  // Use health potion
{
cout << "You reach into your pouch of seemingly endless healing "
        "potions and drink one\n"
     << endl;
health += healingPotion;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}

if (selection == 'd' || selection == 'D')  // clothing
{
cout << "What piece of clothing will you put on?" << endl;
cout << "A - Cloak" << endl;
cout << "B - Mask" << endl;
cout << "C - Glasses" << endl;

cin >> clothingSelection;

if (clothingSelection == 'a' || clothingSelection == 'A') {
cout << "\nYou put on an odly musky smelling cloak that you got "
        "from a room, you sure feel cool\n"
     << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;
} else if (clothingSelection == 'b' || clothingSelection == 'B') {
cout << "\nYou put on the mask and wonder why in the world you "
        "would wan't this mask on\n"
     << endl;
maskOn = 1;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;
} else if (clothingSelection == 'c' || clothingSelection == 'C') {
cout << "\nYou put on these glasses that your "
        "great-great-great-great grandpappy gave you, and you "
        "realize they don't have lenses...\n"
     << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;
}

yourTurn = false;
}

if (selection == 'e' || selection == 'E')  // talking with the 20 foot snake
{
cout << "You say - Oh Apophis, I wish to have a civilized "
        "discussion so that we may come to an agreement\n"
     << endl;
cout << "Apophis Replies - Ssssssssshut the f#%& up DINNER" << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

yourTurn = false;
}
}



while (yourTurn == false) {
int i = (rand() % 4) + 1;

if (i == 1) {
cout << "Apophis launches at you at a speed you can barely react "
        "to and bites you\n"
     << endl;

poisonCounter++;
health -= poison;
cout << "You took some damage and feel ... a bit hungover for some "
        "reason"
     << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;
} else if (i == 2) {
cout << "The giant snake in front of you turns into a ... frog\n" << endl;

if (stun == 1) {
cout << "So confused by what you saw, you feel a slimy tounge "
        "hit your right cheek and you are stunned\n"
     << endl;
stunnedOrNot = 1;
stun = 0;
} else {
cout << "So confused by what you saw, you see a slimy tongue "
        "barely miss your face. You look at the frog in "
        "disbelief and find out that Apophis is now towering "
        "over you in anger\n"
     << endl;
stun = 1;
}
} else if (i == 3) {
cout << "The Wooly Mammoth ahead of you is charging straight at "
        "you\n"
     << endl;
if (selection == 'b' || selection == 'B') {
cout << "The wooly mammoth you see before you is now charging at "
        "you. Luckily, you have deployed your shield in defense "
        "and only feel like one of your legs are broken!\n";
health = health - (chargeDMG / 2);

cout << "\n\n Apophis reverts to his original form\n" << endl;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;

} else {
cout << "The wooly mammoth you see before you is now charging at "
        "you. For some reason, you thought that you didn't need "
        "to defend so you are swept up from under your feet and "
        "feel like both of your legs are broken\n"
     << endl;
health = health - chargeDMG;
cout << "Apophis Health: " << Apophis << endl;
cout << "Your Health: " << health << "\n\n" << endl;
}
} else if (i == 4) {
cout << "\n\nYou look at Apophis and notice that he is doing some weird dance\n"
     << endl;

if (maskOn == 1)
cout << "\nWhile looking through the holes of your mask, you see Apophis try "
        "to entrance you, but for some reason you just look at him weirdly\n"
     << endl;
else {
cout << "\nYou are very confused, but you seem like you are slowly "
        "understanding his rythm and you start dancing with him. \n"
     << endl;
stunnedOrNot = 1;
}
}

yourTurn = true;
}
}
}  // yourtune = true
}  // while health > 0

}  // main
