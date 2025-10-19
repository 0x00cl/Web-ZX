10 BORDER 7: PAPER 7: INK 0
20 CLS
30 GO TO 140
40 REM Google logo
50 INK 1: PRINT AT 0,13;"G"
60 INK 2: PRINT AT 0,14;"o"
70 INK 6: PRINT AT 0,15;"o"
80 INK 1: PRINT AT 0,16;"g"
90 INK 4: PRINT AT 0,17;"l"
100 INK 2: PRINT AT 0,18;"e"
110 INK 0
120 RETURN
130 REM Start of Program
140 GO SUB 40
150 PRINT AT 8,4;"[S]earch"
160 PRINT AT 9,4;"[G]mail"
170 PRINT AT 10,4;"[A]ccount"
180 PAUSE 0
190 LET k$=INKEY$
200 IF k$="G" OR k$="g" THEN GO TO 620
210 IF k$="S" OR k$="s" THEN GO TO 240
220 IF k$="A" OR k$="a" THEN GO TO 1200
230 GO TO 180
240 REM Search
250 CLS
260 GO SUB 40
270 PRINT AT 21,0;"Search:         ""P"" to go back"
280 INPUT a$
290 IF a$="P" OR a$="p" THEN GO TO 10
300 IF LEN (a$)>45 OR LEN (a$)=0 THEN PRINT AT 12,0;"ERROR: Maximum amount of characters 45": GO TO 280
310 FOR I=1 TO 45-LEN (a$)
320 LET a$=a$+" "
330 NEXT I
340 CLS
350 GO SUB 40
360 LET c=1
370 PRINT AT 1,0;"Search results for:": INK 7: PAPER 0: PRINT AT 1,19;a$: INK 0: PAPER 7
380 INK 1: PRINT "________________________________": INK 0
390 PRINT "> GitHub - 89Mods/z80-llm: Runni  ng a GPT-2 si ... (github.com)"
400 INK 2: PRINT "  ______________________________": INK 0
410 PRINT "  Running LLMs on CPU. In this b  log, we will ... (medium.com)"
420 INK 6: PRINT "  ______________________________": INK 0
430 PRINT "  Easiest Way to Run LLMs Locall  y on CPU for ... (youtube.com)"
440 INK 1: PRINT "  ______________________________": INK 0
450 PRINT "  Z80 Cpu User Manual Zilog : Zi  LOG Worldwid ... (archive.com)"
460 INK 4: PRINT "  ______________________________": INK 0
470 PRINT "  Zilog Z80 assembly: Comprehens  ive Guide (example.com)"
480 INK 2: PRINT "________________________________": INK 0
490 PRINT AT 20,0;"Navigation: [W] up, [S] down,"
500 PRINT AT 21,0;"[P]revious page"
510 PAUSE 0
520 LET k$=INKEY$
530 IF k$="P" OR k$="p" THEN GO TO 240
540 IF (k$="W" OR k$="w") AND c>1 THEN LET c=c-1
550 IF (k$="S" OR k$="s") AND c<5 THEN LET c=c+1
560 IF k$="W" OR k$="S" OR k$="w" OR k$="s" THEN GO SUB 580
570 GO TO 510
580 REM Search - Cursor
590 IF c=1 THEN PRINT AT 4,0;">": PRINT AT 7,0;" "
600 IF c>1 THEN PRINT AT c*3+1,0;">": PRINT AT (c-1)*3+1,0;" ": PRINT AT (c+1)*3+1,0;" "
610 RETURN
620 REM Gmail
630 CLS
640 GO SUB 40
650 LET c=1
660 PRINT AT 1,0;"Gmail      Inbox (5)"
670 PRINT "> Thanks for your order"
680 INK 7: PAPER 0: PRINT AT 3,1;" Photos": INK 0: PAPER 7
690 PRINT "  Quick update"
700 PRINT "  Following up"
710 PRINT "  Re: thought you'd like this"
720 PRINT "  Checking in"
730 INK 7: PAPER 0: PRINT AT 8,1;" Fwd: Got a minute?": INK 0: PAPER 7
740 PRINT "  Quick question"
750 PRINT "  Re: Regarding your inquiry"
760 INK 7: PAPER 0: PRINT AT 11,1;" As promised": INK 0: PAPER 7
770 PRINT "  When you have time"
780 PRINT "  Your package is on your way"
790 PRINT "  Order shipped!"
800 PRINT "  Login alert"
810 INK 7: PAPER 0: PRINT AT 16,1;" Dinner on Friday?": INK 0: PAPER 7
820 PRINT "  Your receipt"
830 PRINT "________________________________"
840 PRINT "Page: [1], 2, 3, 4, 5, ..., 20"
850 PRINT AT 20,0;"Navigation: [W] up, [S] down,"
860 PRINT AT 21,0;"[Enter], [P]revious page"
870 PAUSE 0
880 LET k$=INKEY$
890 IF K$=CHR$ 13 THEN GO TO 1010
900 IF k$="P" OR k$="p" THEN GO TO 10
910 IF (k$="W" OR k$="w") AND c>1 THEN LET c=c-1
920 IF (k$="S" OR k$="s") AND c<16 THEN LET c=c+1
930 IF k$="W" OR k$="S" OR k$="w" OR k$="s" THEN GO SUB 950
940 GO TO 870
950 REM Gmail - Cursor
960 IF c=1 THEN PRINT AT 2,0;">": PRINT AT 3,0;" "
970 IF c>1 THEN PRINT AT c+1,0;">": PRINT AT c,0;" "
980 IF c<>16 THEN PRINT AT c+2,0;" "
990 RETURN
1000 REM Gmail - Email
1010 CLS
1020 GO SUB 40
1030 PRINT AT 1,13;"Gmail"
1040 INK 7: PAPER 0: PRINT "FROM:": INK 0: PAPER 7: PRINT "john\@example.com"
1050 INK 7: PAPER 0: PRINT "TO:": INK 0: PAPER 7: PRINT "Me (user\@example.com)"
1060 INK 7: PAPER 0: PRINT "DATE:": INK 0: PAPER 7: PRINT "Oct 16, 2025, 2:10 PM"
1070 INK 7: PAPER 0: PRINT "SUBJECT:": INK 0: PAPER 7: PRINT "Following up"
1080 INK 7: PAPER 0: PRINT "CONTENT:": INK 0: PAPER 7
1090 PRINT "Hey $USER,"
1100 PRINT "Just wanted to follow up on our conversation last week. Did you get a chance to look over that document I sent you?"
1110 PRINT "Cheers,"
1120 PRINT "John"
1130 PRINT AT 19,0;"________________________________"
1140 PRINT AT 20,0;"[R]eply [F]orward [D]elete"
1150 PRINT AT 21,0;"[B]lock [P]revious page"
1160 PAUSE 0
1170 LET k$=INKEY$
1180 IF k$="P" OR k$="p" THEN GO TO 620
1190 GO TO 1160
1200 REM Account
1210 CLS
1220 GO SUB 40
1230 LET c=1
1240 PRINT AT 1,13;"Account"
1250 PRINT ""
1260 PRINT "Welcome, $USER"
1270 PRINT "Manage your information"
1280 PRINT ""
1290 PRINT "[1] Personal information"
1300 PRINT "[2] Data & privacy"
1310 PRINT "[3] Security"
1320 PRINT "[4] People & sharing"
1330 PRINT "[5] Payments & subscription"
1340 PRINT AT 21,0;"[P]revious page"
1350 PAUSE 0
1360 LET k$=INKEY$
1370 IF k$="P" OR k$="p" THEN GO TO 10
1380 IF k$="1" THEN GO TO 1440
1390 IF k$="2" THEN GO TO 1590
1400 IF k$="3" THEN GO TO 1730
1410 IF k$="4" THEN GO TO 1880
1420 IF k$="5" THEN GO TO 2030
1430 GO TO 1350
1440 REM Account - Personal information
1450 CLS
1460 GO SUB 40
1470 PRINT AT 1,13;"Account"
1480 PRINT AT 3,0;"Personal information"
1490 INK 7: PAPER 0: PRINT "Name:": INK 0: PAPER 7: PRINT "John doe"
1500 INK 7: PAPER 0: PRINT "Birthday:": INK 0: PAPER 7: PRINT "January 1, 1970"
1510 INK 7: PAPER 0: PRINT "Gender:": INK 0: PAPER 7: PRINT "Male"
1520 PRINT AT 19,0;"________________________________"
1530 PRINT AT 20,0;"[E]dit"
1540 PRINT AT 21,0;"[P]revious page"
1550 PAUSE 0
1560 LET k$=INKEY$
1570 IF k$="P" OR k$="p" THEN GO TO 1200
1580 GO TO 1550
1590 REM Account - Data & privacy
1600 CLS
1610 GO SUB 40
1620 PRINT AT 1,13;"Account"
1630 PRINT AT 3,0;"Data & privacy"
1640 PRINT "[1] History settings"
1650 PRINT "[2] Personalized ads"
1660 PRINT "[3] Search personalization"
1670 PRINT AT 20,0;"________________________________"
1680 PRINT AT 21,0;"[P]revious page"
1690 PAUSE 0
1700 LET k$=INKEY$
1710 IF k$="P" OR k$="p" THEN GO TO 1200
1720 GO TO 1690
1730 REM Account - Security
1740 CLS
1750 GO SUB 40
1760 PRINT AT 1,13;"Account"
1770 PRINT AT 3,0;"Security"
1780 PRINT "[1] Recent security activity"
1790 PRINT "[2] How you sign into Google"
1800 PRINT "[3] Your devices"
1810 PRINT "[4] Password manager"
1820 PRINT AT 20,0;"________________________________"
1830 PRINT AT 21,0;"[P]revious page"
1840 PAUSE 0
1850 LET k$=INKEY$
1860 IF k$="P" OR k$="p" THEN GO TO 1200
1870 GO TO 1840
1880 REM Account - People & sharing
1890 CLS
1900 GO SUB 40
1910 PRINT AT 1,13;"Account"
1920 PRINT AT 3,0;"People & sharing"
1930 PRINT "[1] Contacts"
1940 PRINT "[2] Location sharing"
1950 PRINT "[3] Choose what others see"
1960 PRINT "[4] Business features"
1970 PRINT AT 20,0;"________________________________"
1980 PRINT AT 21,0;"[P]revious page"
1990 PAUSE 0
2000 LET k$=INKEY$
2010 IF k$="P" OR k$="p" THEN GO TO 1200
2020 GO TO 1990
2030 REM Account - Payments & subscription
2040 CLS
2050 GO SUB 40
2060 PRINT AT 1,13;"Account"
2070 PRINT AT 3,0;"Payments & subscription"
2080 PRINT "[1] Payment methods"
2090 PRINT "[2] Payments info"
2100 PRINT "[3] Account storage"
2110 PRINT "[4] Subscriptions"
2120 PRINT AT 20,0;"________________________________"
2130 PRINT AT 21,0;"[P]revious page"
2140 PAUSE 0
2150 LET k$=INKEY$
2160 IF k$="P" OR k$="p" THEN GO TO 1200
2170 GO TO 2140
