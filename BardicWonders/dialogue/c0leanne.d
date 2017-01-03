BEGIN C0LEANNE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a1
SAY ~Newcomers, hmm? Welcome to Leanne's emporium of bardic wonders... do tell me if anything catches your eye.~
+ ~!Global("C0LeanneLegendaryWeapon","GLOBAL",1)~ + ~Do you have anything exceptional for sale?~ + a1.1
++ ~Let's see what you have.~ + a1.0
++ ~No thanks. I'll be going now.~ EXIT
END

IF ~~ a1.0
SAY ~You'll not find a greater variety of magical wonders anywhere else.~
IF ~~ DO ~StartStore("c0leanne",LastTalkedToBy())~ EXIT
END

IF ~~ a1.1
SAY ~Be ye looking for something special, hmm? Let me have a closer look at you...~
IF ~ReputationGT(Player1,19)~ + a1.2
IF ~ReputationLT(Player1,2)~ + a1.3
IF ~!ReputationGT(Player1,19) !ReputationLT(Player1,2)~ + a1.4
END

IF ~~ a1.2
SAY ~Ah... very good, very good indeed! I see within you a beacon of light, spreading hope across the land. Your heroism shall lead to many tales for many lifetimes. I believe you may be worthy.~
IF ~~ + a1.5
END

IF ~~ a1.3
SAY ~Hmm... you have left quite a blight upon this land, have you not? A true villain be ye, adventurer, one whose name shall be cursed many generations from now. Very well... perhaps you are worthy.~
IF ~~ + a1.5
END

IF ~~ a1.4
SAY ~Hmm... no, I fear you have yet to make your mark upon this land. Return when you can truly call yourself hero or villain, and perhaps I shall have a wonder for you...~
++ ~In that case, let me see your regular wares.~ + a1.0
++ ~Goodbye.~ EXIT
END

IF ~~ a1.5
SAY ~In my hands, two legendary weapons: "Dirge", the singing blade... and "Lament", the whistling bow.~
IF ~Class(Player1,BARD_ALL)~ + a1.6
IF ~!Class(Player1,BARD_ALL)~ + a1.7
END

IF ~~ a1.6
SAY ~Only a true bard may lay hands upon these artifacts, but choose wisely! Only one shall be yours, and the price will be steep: 60,000 gold. Which will you choose, I wonder?~
+ ~PartyGoldGT(59999)~ + ~I choose Dirge, the long sword.~ DO ~TakePartyGold(60000) GiveItemCreate("c0bwsw2",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(59999)~ + ~I choose Lament, the shortbow.~ DO ~TakePartyGold(60000) GiveItemCreate("c0bwbo1",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(59999)~ + ~I will decide another time.~ + a1.9
+ ~PartyGoldLT(60000)~ + ~I do not have enough gold for either.~ + a1.9
END

IF ~~ a1.7
SAY ~Only a true bard may lay hands upon these artifacts. You are no bard, but perhaps you shall have one within your company. Choose wisely! Only one shall be yours, and the price will be steep: 80,000 gold. Which will you choose, I wonder?~
+ ~PartyGoldGT(79999)~ + ~I choose Dirge, the long sword.~ DO ~TakePartyGold(80000) GiveItemCreate("c0bwsw2",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(79999)~ + ~I choose Lament, the shortbow.~ DO ~TakePartyGold(80000) GiveItemCreate("c0bwbo1",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(79999)~ + ~I will decide another time.~ + a1.9
+ ~PartyGoldLT(80000)~ + ~I do not have enough gold for either.~ + a1.9
END

IF ~~ a1.8
SAY ~A wise choice. It is now yours, renowned one. May its name be sung in legend alongside your own.~
IF ~~ + a1.10
END

IF ~~ a1.9
SAY ~As you wish. These legends shall wait for you... so long as you can maintain your fame.~
IF ~~ + a1.10
END

IF ~~ a1.10
SAY ~Perhaps you may be still interested in some of my lesser treasures, hmm?~
++ ~Let's see what you have.~ + a1.0
++ ~No thanks. I'll be going now.~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN a2
SAY ~Ah... a familiar face returns. How goes your adventures, hmm? Perhaps you have brought enough gold for my many wonders...?~
+ ~!Global("C0LeanneLegendaryWeapon","GLOBAL",1)~ + ~Do you have anything exceptional for sale?~ + a1.1
++ ~Let's see what you have.~ + a1.0
++ ~No thanks. I'll be going now.~ EXIT
END
