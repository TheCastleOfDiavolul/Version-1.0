_Title "The Castle Of Diavolul"

r = 1
Screen 12
Color 7, 0
Cls

gotlantern = 1
gotsword = 1

Dim Shared DOOM As Double
Minutes = 1440
Seconds = 0
GameTime = Minutes * 60 + Seconds

Dim directions(1 To 36) As String
directions(1) = "NORTH OR SOUTH"
directions(2) = "NORTH OR SOUTH"
directions(3) = "EAST, WEST, OR SOUTH"
directions(4) = "NORTH, EAST, OR WEST"
directions(5) = "EAST OR WEST"
directions(6) = "EAST OR WEST"
directions(7) = "NORTH OR SOUTH"
directions(8) = "NORTH OR SOUTH"
directions(9) = "NORTH OR SOUTH"
directions(10) = "NORTH OR SOUTH"
directions(11) = "EAST, WEST, OR SOUTH"
directions(12) = "EAST OR WEST"
directions(13) = "EAST OR WEST"
directions(14) = "NORTH, EAST, OR WEST"
directions(15) = "EAST, WEST, OR SOUTH"
directions(16) = "EAST OR WEST"
directions(17) = "EAST OR WEST"
directions(18) = "NORTH OR SOUTH"
directions(19) = "NORTH OR SOUTH"
directions(20) = "NORTH OR SOUTH"
directions(21) = "NORTH OR SOUTH"
directions(22) = "NORTH, EAST, OR WEST"
directions(23) = "EAST OR WEST"
directions(24) = "EAST OR WEST"
directions(25) = "NORTH OR SOUTH"
directions(26) = "NORTH OR SOUTH"
directions(27) = "SOUTH, EAST, OR WEST"
directions(28) = "NORTH OR WEST"
directions(29) = "NORTH OR SOUTH"
directions(30) = "NORTH OR SOUTH"
directions(31) = "WEST OR SOUTH"
directions(32) = "EAST OR WEST"
directions(33) = "EAST OR SOUTH"
directions(34) = "NORTH OR SOUTH"
directions(35) = "NORTH OR SOUTH"
directions(36) = "NORTH OR EAST"

Print ""
Print "________________________________________________________________________________"
Print "|/                                                                            \|"
Print "|    .-.    A darkness has taken the land. The evil Count Diavolul      .-.    |"
Print "|  __| |__  has unleashed a hoard of evil upon the land. You are the  __| |__  |"
Print "| [__   __] last of the village nobles, Baroness October Crow. With  [__   __] |"
Print "|    | |    the courage of your ancesters you must vanquish the lands   | |    |"
Print "|    | |    of this evil.                                               | |    |"
Print "|    | |                                                                | |    |"
Print "|    '-'                                                                '-'    |"
Print "_______________________________________________________________________________|"
Do: Loop Until InKey$ <> ""


Do: Loop Until InKey$ <> ""
DOOM = Timer(0.1) + GameTime 'change this to to desied time for the game to run

Do
    Cls
    Print ""
    Print ""
    Print ""
    Print "                                                          "
    Print "                                                          "
    Print "                        P                  P         P    "
    Print "                       /\     P      P    /\        /\    "
    Print "                      /__\   /\_____/\   /__\      /__\   "
    Print "                      |. |_=_|. . . .|_=_=_=_=_=_=_|. |   "
    Print "                      |. |. .|  ___  |. . . . . . .|. |   "
    Print "                      |. |   | | | | |             |. |   "
    Print "                    __|__|___|_|_|_|_|_____________|__|__ "
    Print "                   /          /   /                      \"
    Print "                                                          "
    Print "                            The Castle Of Diavolul        "
    Print ""
    Print ""
    Print Space$(38);
    If InStr(directions(r), "NORTH") Then Print "N" Else Print
    Print "*---------------------------------* ";
    If InStr(directions(r), "WEST") Then Print "W"; Else Print " ";
    Print " + ";
    If InStr(directions(r), "EAST") Then Print "E"; Else Print " ";
    Print " *------------------------------------*"
    Print Space$(38);
    If InStr(directions(r), "SOUTH") Then Print "S" Else Print
    Print
    Print "If you are stuck just type HELP."
    Print
    GoSub ROOM
    GoSub parser
Loop

ROOM:
If r = 1 Then: GoSub r1
If r = 2 Then: GoSub r2
If r = 3 Then: GoSub r3
If r = 4 Then: GoSub r4
If r = 5 Then: GoSub r5
If r = 6 Then: GoSub r6
If r = 7 Then: GoSub r7
If r = 8 Then: GoSub r8
If r = 9 Then: GoSub r9
If r = 10 Then: GoSub r10
If r = 11 Then: GoSub r11
If r = 12 Then: GoSub r12
If r = 13 Then: GoSub r13
If r = 14 Then: GoSub r14
If r = 15 Then: GoSub r15
If r = 16 Then: GoSub r16
If r = 17 Then: GoSub r17
If r = 18 Then: GoSub r18
If r = 19 Then: GoSub r19
If r = 20 Then: GoSub r20
If r = 21 Then: GoSub r21
If r = 22 Then: GoSub r22
If r = 23 Then: GoSub r23
If r = 24 Then: GoSub r24
If r = 25 Then: GoSub r25
If r = 26 Then: GoSub r26
If r = 27 Then: GoSub r27
If r = 28 Then: GoSub r28
If r = 29 Then: GoSub r29
If r = 30 Then: GoSub r30
If r = 31 Then: GoSub r31
If r = 32 Then: GoSub r32
If r = 33 Then: GoSub r33
If r = 34 Then: GoSub r34
If r = 35 Then: GoSub r35
If r = 36 Then: GoSub r36
Return

parser:
Print "> ";
cmd$ = GrabInput
cmd$ = LTrim$(RTrim$(UCase$(cmd$)))
If cmd$ = "END" Or cmd$ = "QUIT" Or cmd$ = "EXIT" Or cmd$ = "Q" Then
    Cls
    Print "_______________________________________________________________________________"
    Print "                                                                               "
    Print " Thank you for playing -The Castle Of Disvolul-. Until next time, the evil     "
    Print " shall return.                                                                 "
    Print "                                                                               "
    Print "_______________________________________________________________________________"
    End
End If
If cmd$ = "HELP" Or cmd$ = "H" Or cmd$ = "?" Then
    Cls
    Print
    Print "_______________________________________________________________________________"
    Print "\                                                                             \"
    Print "\ The Castle Of Diavolul - Basic Controls                                     \"
    Print "\                                                                             \"
    Print "\ North, South, East, or West - Move in available location                    \"
    Print "\ Examine - Item or Object    - Allows the player to examine an item or object\"
    Print "\ Use - Item                  - Use and item                                  \"
    Print "\ Take - Item                 - Take or move an Item                          \"
    Print "\ Talk                        - Talk to another character                     \"
    Print "\ inventory                   - View your inventory                           \"
    Print "\ Help                        - Brings up this screen                         \"
    Print "\ End                         - End's game                                    \"
    Print "\                                                                             \"
    Print "\ *Everything from items, characters, and objects have a capital letter.*     \"
    Print "_______________________________________________________________________________"
    Print
    Print "PRESS ANY KEY...": Sleep
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If cmd$ = "INVENTORY" Or cmd$ = "INV" Or cmd$ = "ITEMS" Or cmd$ = "I" Then
    Cls
    Print "INVENTORY..."
    Print
    If gotlantern = 1 Then: Print "/ Lantern / An old dented tin lantern to vanquish the darkness."
    If gotsword = 1 Then: Print "/ Sword / Crafted out of only the finest steel in the region."
    Print
    Print "PRESS ANY KEY..."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If

If cmd$ = "GO NORTH" Or cmd$ = "NORTH" Or cmd$ = "N" Then
    If r = 1 Then: r = 2: GoTo moved
    If r = 2 Then: r = 3: GoTo moved
    If r = 4 Then: r = 7: GoTo moved
    If r = 7 Then: r = 8: GoTo moved
    If r = 8 Then: r = 9: GoTo moved
    If r = 9 Then: r = 10: GoTo moved
    If r = 10 Then: r = 11: GoTo moved
    If r = 22 Then: r = 21: GoTo moved
    If r = 21 Then: r = 20: GoTo moved
    If r = 20 Then: r = 19: GoTo moved
    If r = 19 Then: r = 18: GoTo moved
    If r = 18 Then: r = 15: GoTo moved
    If r = 14 Then: r = 25: GoTo moved
    If r = 25 Then: r = 26: GoTo moved
    If r = 26 Then: r = 27: GoTo moved
    If r = 28 Then: r = 29: GoTo moved
    If r = 29 Then: r = 30: GoTo moved
    If r = 30 Then: r = 31: GoTo moved
    If r = 36 Then: r = 35: GoTo moved
    If r = 35 Then: r = 34: GoTo moved
    If r = 34 Then: r = 33: GoTo moved
End If
If cmd$ = "GO EAST" Or cmd$ = "EAST" Or cmd$ = "E" Then
    If r = 24 Then: r = 23: GoTo moved
    If r = 23 Then: r = 22: GoTo moved
    If r = 22 Then: r = 3: GoTo moved
    If r = 3 Then: r = 4: GoTo moved
    If r = 4 Then: r = 5: GoTo moved
    If r = 5 Then: r = 6: GoTo moved
    If r = 17 Then: r = 16: GoTo moved
    If r = 16 Then: r = 15: GoTo moved
    If r = 15 Then: r = 14: GoTo moved
    If r = 14 Then: r = 11: GoTo moved
    If r = 11 Then: r = 12: GoTo moved
    If r = 12 Then: r = 13: GoTo moved
    If r = 36 Then: r = 27: GoTo moved
    If r = 27 Then: r = 28: GoTo moved
    If r = 33 Then: r = 32: GoTo moved
    If r = 32 Then: r = 31: GoTo moved
End If
If cmd$ = "GO SOUTH" Or cmd$ = "SOUTH" Or cmd$ = "S" Then
    If r = 3 Then: r = 2: GoTo moved
    If r = 2 Then: r = 1: GoTo moved
    If r = 11 Then: r = 10: GoTo moved
    If r = 10 Then: r = 9: GoTo moved
    If r = 9 Then: r = 8: GoTo moved
    If r = 8 Then: r = 7: GoTo moved
    If r = 7 Then: r = 4: GoTo moved
    If r = 15 Then: r = 18: GoTo moved
    If r = 18 Then: r = 19: GoTo moved
    If r = 19 Then: r = 20: GoTo moved
    If r = 20 Then: r = 21: GoTo moved
    If r = 21 Then: r = 22: GoTo moved
    If r = 27 Then: r = 26: GoTo moved
    If r = 26 Then: r = 25: GoTo moved
    If r = 25 Then: r = 14: GoTo moved
    If r = 33 Then: r = 34: GoTo moved
    If r = 34 Then: r = 35: GoTo moved
    If r = 35 Then: r = 36: GoTo moved
    If r = 31 Then: r = 30: GoTo moved
    If r = 30 Then: r = 29: GoTo moved
    If r = 29 Then: r = 28: GoTo moved
End If
If cmd$ = "GO WEST" Or cmd$ = "WEST" Or cmd$ = "W" Then
    If r = 6 Then: r = 5: GoTo moved
    If r = 5 Then: r = 4: GoTo moved
    If r = 4 Then: r = 3: GoTo moved
    If r = 3 Then: r = 22: GoTo moved
    If r = 22 Then: r = 23: GoTo moved
    If r = 23 Then: r = 24: GoTo moved
    If r = 13 Then: r = 12: GoTo moved
    If r = 12 Then: r = 11: GoTo moved
    If r = 11 Then: r = 14: GoTo moved
    If r = 14 Then: r = 15: GoTo moved
    If r = 15 Then: r = 16: GoTo moved
    If r = 16 Then: r = 17: GoTo moved
    If r = 28 Then: r = 27: GoTo moved
    If r = 27 Then: r = 36: GoTo moved
    If r = 31 Then: r = 32: GoTo moved
    If r = 32 Then: r = 33: GoTo moved
End If

'''ITEMS
If (cmd$ = "EXAMINE LANTERN") And gotlantern = 1 Then
    Cls
    Print "/ It's been in the family for generations. It will help me to see what"
    Print "awaits me in the darkness."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE SWORD") And gotsword = 1 Then
    Cls
    Print "/ A fine sword crafted by a local blacksmith in the village. Perfect"
    Print "for combat."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If

'''Objects
If (cmd$ = "EXAMINE PAINTINGS") And r = 9 Then
    Cls
    Print "/ A painting detailing the events at the end of a bloody battle."
    Print "/ The dead are in piles and the dirt is stained with blood."
    Print "/ Probably a few hundred years old."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE STATUE") And r = 9 Then
    Cls
    Print "/ It towers over you and is of a decorated soldier in the pose"
    Print "/ of about to lay siege to the enemy."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE CARVED FIGURES") And r = 11 Then
    Cls
    Print "/ Carved figures positioned as in dance and with smiles on their"
    Print "/ faces."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE DOOR") And r = 26 Then
    Cls
    Print "/ Sturdy wooden doors appear to be made out of a single piece."
    Print "/ It's taken from the finest redwood door. The handle is solid"
    Print "/ brass and it looks to be quite solid."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE PORTRAITS") And r = 27 Then
    Cls
    Print "/ Finely detailed images capture the lives of people who have"
    Print "/ long since died."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE COFFIN") And r = 32 Then
    Cls
    Print "/ Made out of solid marble and held above the floor by large steel"
    Print "/ chains. Inside of it is the finest of silks. It's something you'd"
    Print "/ expect a person of royal lineage would have."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If

'''Npc's
If (cmd$ = "EXAMINE PALE FIGURE") And r = 10 Then
    Cls
    Print "/ A look of anguish is etched upon its face. Its flesh is barely"
    Print "/ covered in what remains of its burial robe."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "TALK TO PALE FIGURE") And r = 10 Then
    Cls
    Print "/ Beware, adventurer, for death will soon be coming."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE GHOSTLY FIGURE") And r = 15 Then
    Cls
    Print "/ It paces back and forth, holding what appears to be a lantern"
    Print "/ that gives off an eerie glow."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "TALK TO GHOSTLY FIGURE") And r = 15 Then
    Cls
    Print "/ I was like you, a fool with a sense of adventure."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "EXAMINE SPIRIT") And r = 36 Then
    Cls
    Print "/ The dim glow of white light surrounds the strange being. While"
    Print "/ there is a warmth to it, its face reminds you of that of a young"
    Print "/ woman. Alone within this place."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "TALK TO SPIRIT") And r = 36 Then
    Cls
    Print "/ If you are planning on slaying Count Diavolul, you may wish to"
    Print "/ bring some Holy Water."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If
If (cmd$ = "HOLY WATER") And r = 36 Then
    Cls
    Print "/ Yes, it's the one thing that can weaken his flesh."
    Do: Loop Until InKey$ = ""
    Do: Loop Until InKey$ <> ""
End If

''''''''''''''''''''''''''''''''''''''''''''Take Item Commands
If (cmd$ = "TAKE DAGGER") And gotdagger = 0 And r = 1 Then
    gotdagger = 1
    Print "/ You have taken the Dagger."
End If

moved:
Return

r1:
Print "________________________________________________________________________"
Print " You stand before a vast entranceway to a castle that has been crafted  "
Print " by the hands of those long since dead.                                 "
Print "________________________________________________________________________"
Return

r2:
Print "________________________________________________________________________"
Print " A cold breeze brushes passed you and the faint sounds of people begging"
Print " for mercy can be heard. The large wooden doors slowly swing open as if "
Print " you were expected.                                                     "
Print "________________________________________________________________________"
Return

r3:
Print "________________________________________________________________________"
Print " The flickering of candles gives off an eerie glow of hope within this  "
Print " untouched place.                                                       "
Print "________________________________________________________________________"
Return

r4:
Print "________________________________________________________________________"
Print " Every step, you take through this unholy place brings you deeper into  "
Print " the never-ending madness of the castle.                                "
Print "________________________________________________________________________"
Return

r5:
Print "________________________________________________________________________"
Print " You wander down a long and narrow hallway. Then, you hear the cry of   "
Print " bats from overhead.                                                    "
Print "________________________________________________________________________"
Return

r6:
Print "________________________________________________________________________"
Print " A thin mist begins to seep through the floor and the faint sound of    "
Print " someone playing the organ can be heard.                                "
Print "________________________________________________________________________"
Return

r7:
Print "________________________________________________________________________"
Print " After the many twists and turns you take wandering around this dead    "
Print " place.                                                                 "
Print "________________________________________________________________________"
Return

r8:
Print "________________________________________________________________________"
Print " With every passing moment, you wander around this forsaken place.      "
Print "________________________________________________________________________"
Return

r9:
Print "________________________________________________________________________"
Print " Paintings hang on the walls as a Statue towers over you. A mixture of  "
Print " potted plants adorns this place.                                       "
Print "________________________________________________________________________"
Return

r10:
Print "________________________________________________________________________"
Print " The floor creaks with every step you take. A cool breeze brushes past  "
Print " you. All the while the wailing cries of a Pale Figure can be seen.     "
Print "________________________________________________________________________"
Return

r11:
Print "________________________________________________________________________"
Print " Decorated walls adorned with Carved Figures on the walls.              "
Print "________________________________________________________________________"
Return

r12:
Print "________________________________________________________________________"
Print " The world around you grows ever colder.                                "
Print "________________________________________________________________________"
Return

r13:
Print "________________________________________________________________________"
Print " You stand before a large doorway that leads you to another wing of the "
Print " castle.                                                                "
Print "________________________________________________________________________"
Return

r14:
Print "________________________________________________________________________"
Print " With every step, you take the sounds of the floorboards can be heard.  "
Print "________________________________________________________________________"
Return

r15:
Print "________________________________________________________________________"
Print " A Ghostly Figure floats in the air. A feeling of dread washes over you."
Print "________________________________________________________________________"
Return

r16:
Print "________________________________________________________________________"
Print " The sound of the wind howling fills the air with a cry that makes you  "
Print " believe that you are on the right path.                                "
Print "________________________________________________________________________"
Return

r17:
Print "________________________________________________________________________"
Print " Parts of the walls have crumbled into piles resting against the walls. "
Print "________________________________________________________________________"
Return

r18:
Print "________________________________________________________________________"
Print " This castle is nothing but a constant reminder of what limbo must feel "
Print " like.                                                                  "
Print "________________________________________________________________________"
Return

r19:
Print "________________________________________________________________________"
Print " You are standing within the narrow walls of a study of some sort. The  "
Print " walls are decorated with dead vines and the eerie glow of the torches. "
Print "________________________________________________________________________"
Return

r20:
Print "________________________________________________________________________"
Print " While the stench of death hangs in the air. To your surprise, you find "
Print " the remains of those foolish enough to enter.                          "
Print "________________________________________________________________________"
Return

r21:
Print "________________________________________________________________________"
Print " Everything within this realm makes you feel as if you are being        "
Print " watched.                                                               "
Print "________________________________________________________________________"
Return

r22:
Print "________________________________________________________________________"
Print " The sudden loud noise of a canyon going off could be heard. Just what  "
Print " is happening?                                                          "
Print "________________________________________________________________________"
Return

r23:
Print "________________________________________________________________________"
Print " The sound of a wolf howling can be heard coming from outside.          "
Print "________________________________________________________________________"
Return

r24:
Print "________________________________________________________________________"
Print " Silence fills the air as you feel truly alone within this dark hallway."
Print "________________________________________________________________________"
Return

r25:
Print "________________________________________________________________________"
Print " The walls of this forsaken castle appear to be moving as if they are   "
Print " alive.                                                                 "
Print "________________________________________________________________________"
Return

r26:
Print "________________________________________________________________________"
Print " A large wooden Door slowly opens as if someone or something has been   "
Print " expecting you.                                                         "
Print "________________________________________________________________________"
Return

r27:
Print "________________________________________________________________________"
Print " The red oak walls appear to have been freshly cleaned. Portraits of the"
Print " Count and those from within his family throughout the ages.            "
Print "________________________________________________________________________"
Return

r28:
Print "________________________________________________________________________"
Print " You stand before a large marble fireplace. Several pieces of furniture "
Print " are placed around the room. They appear to be almost brand new.        "
Print "________________________________________________________________________"
Return

r29:
Print "________________________________________________________________________"
Print " The faint sound of crying echoes towards you. Just what is happening   "
Print " here?                                                                  "
Print "________________________________________________________________________"
Return

r30:
Print "________________________________________________________________________"
Print " Large black curtains cover the windows. Keeping the rays of the sun out"
Print " of this place.                                                         "
Print "________________________________________________________________________"
Return

r31:
Print "________________________________________________________________________"
Print " Strange shadows dance upon the walls. A world forever forsaken appears "
Print " to be celebrating the agony of life.                                   "
Print "________________________________________________________________________"
Return

r32:
Print "________________________________________________________________________"
Print " You stand before a large wooden Coffin; two large candle holders have  "
Print " been placed on each side of the coffin. The faint aroma of roses and   "
Print " perfume fills the air.                                                 "
Print "________________________________________________________________________"
Return

r33:
Print "________________________________________________________________________"
Print " Faint laughter can be heard; it makes the room almost come to life.    "
Print "________________________________________________________________________"
Return

r34:
Print "________________________________________________________________________"
Print " Black curtains cover the windows all the while the faint flickering of "
Print " old candles cast shadows on the walls.                                 "
Print "________________________________________________________________________"
Return

r35:
Print "________________________________________________________________________"
Print " Music can be heard playing, and the voices of people speaking to one   "
Print " another and laughing can be heard. Almost, as if you've stepped back in"
Print " time.                                                                  "
Print "________________________________________________________________________"
Return

r36:
Print "________________________________________________________________________"
Print " You stop in your tracks as you are greeted by a Spirit.                "
Print "________________________________________________________________________"
Return

win:
Color 7, 0
Cls
Print "_____________________________________________________________________________"
Print "/                                                                           \"
Print "/ ___ _  _ ____    ____ _  _ ___                                            \"
Print "/  |  |__| |___    |___ |\ | |  \                                           \"
Print "/  |  |  | |___    |___ | \| |__/                                           \"
Print "/                                                                           \"
Print "/                                                                           \"
Print "/                                                                           \"
Print "/ The castle of the once feared evils that ruled over this land has been    \"
Print "/ been freed and now the people rejoice. You have been given the title of   \"
Print "/ hero. But the journey isn't over yet, there is still evil to vanquish.    \"
Print "_____________________________________________________________________________"
Print
Print
Print
Print "                    Thank you for playing."
Print ""
Print "                                -The Castle Of Diavolul-"
Print ""

Do: Loop Until InKey$ <> ""
End

Function GrabInput$
    x = Pos(0)
    y = CsrLin
    maxwidth = _Width - x
    PCopy 0, 1 'make a backup copy of the screen

    Do
        k = _KeyHit
        i$ = InKey$
    Loop Until k = 0 And InKey$ = "" 'clear the keyboard buffer

    Do
        _Limit 30
        PCopy 1, 0
        Locate y, x: Print Userinput$

        k = _KeyHit
        Select Case k
            Case 8
                Userinput$ = Left$(Userinput$, Len(Userinput$) - 1)
            Case 65 TO 90, 97 TO 122, 32
                Userinput$ = UCase$(Userinput$ + Chr$(k))
        End Select

        timerleft## = (DOOM - Timer(0.1))
        minutes = timerleft## \ 60
        seconds = timerleft## - minutes * 60
        Locate 2, 32: Print Using " [  ####:##  ]"; minutes, seconds
        If timerleft## <= 0 Then GoTo doomed
        _Display

    Loop Until k = 13
    GrabInput$ = Userinput$
    _AutoDisplay
    Exit Function

    doomed:
    Cls
    Print "Darkness encloses you. As the faint image of the reaper of death. It stands"
    Print "before you and reaches its hand out to you. Within a matter of time you and"
    Print "death walk off into the afterlife. Until next time..."
    _Display
    End
End Function
