10 BORDER 7: PAPER 7: INK 0
20 CLS
30 GO TO 70
40 REM Hacker news
50 INK 7: PAPER 0: PRINT AT 0,0;"Hacker News           USER$(432)": INK 0: PAPER 7
60 RETURN
70 REM First page
80 CLS
90 GO SUB 40
100 PRINT "[1] Root System Drawings"
110 PRINT "   (wur.nl) 226 points by boo..."
120 PRINT "   9h ago, 42 comments"
130 PRINT "[2] Is Postgres read heavy or..."
140 PRINT "   (crunchydata.com) 82 point..."
150 PRINT "   4h ago, 12 comments"
160 PRINT "[3] How to sequence your DNA ..."
170 PRINT "   (maxlangenkamp.substack.com)"
180 PRINT "   2h ago, 34 comments"
190 PRINT "[4] Chen-Ning Yang, Nobel lau..."
200 PRINT "   (chinadaily.com.cn) 68 poi..."
210 PRINT "   4h ago, 22 comments"
220 PRINT "[5] Adding Breadcrumbs to a R..."
230 PRINT "   (avohq.io) 16 points by fl..."
240 PRINT "   2h ago, discuss"
250 PRINT "[6] Tinnitus Neuromodulator"
260 PRINT "   (mynoise.net) 204 points b..."
270 PRINT "   6h ago, 141 comments"
280 PRINT AT 20,0;"________________________________"
290 PRINT AT 21,0;"[S]ubmit, [M]ore"
300 PAUSE 0
310 LET k$=INKEY$
320 IF k$="M" OR k$="m" THEN GO TO 360
330 IF k$="S" OR k$="s" THEN GO TO 1050
340 IF k$="1" OR k$="2" OR k$="3" OR k$="4" OR k$="5" OR k$="6" THEN GO TO 650
350 GO TO 300
360 REM Second page
370 CLS
380 GO SUB 40
390 PRINT "[1] What Dynamic Typing Is Fo..."
400 PRINT "   (unplannedobsolescence.com)"
410 PRINT "   6h ago, 39 comments"
420 PRINT "[2] Flowistry: An IDE plugin ..."
430 PRINT "   (github.com/willcrichton) ..."
440 PRINT "   8h ago, 24 comments"
450 PRINT "[3] Solution to CIA's Kryptos..."
460 PRINT "   (nytimes.com) 94 points by..."
470 PRINT "   6h ago, 35 comments"
480 PRINT "[4] Who invented deep residu..."
490 PRINT "   (idsia.ch) 62 points by ti..."
500 PRINT "   7h ago, 22 comments"
510 PRINT "[5] ./watch"
520 PRINT "   (dotslashwatch.com) 285 po..."
530 PRINT "   13h ago, 77 comments"
540 PRINT "[6] Titan submersible's $62 ..."
550 PRINT "   (tomshardware.com) 116 poi..."
560 PRINT "   11h ago, 75 comments"
570 PRINT AT 20,0;"________________________________"
580 PRINT AT 21,0;"[S]ubmit, [M]ore, [B]ack"
590 PAUSE 0
600 LET k$=INKEY$
610 IF k$="B" OR k$="b" THEN GO TO 70
620 IF k$="S" OR k$="s" THEN GO TO 1050
630 IF k$="1" OR k$="2" OR k$="3" OR k$="4" OR k$="5" OR k$="6" THEN GO TO 650
640 GO TO 590
650 REM 1st post
660 CLS
670 GO SUB 40
680 INK 7: PAPER 0: PRINT "Title:": INK 0: PAPER 7: PRINT "Root System Drawings"
690 INK 7: PAPER 0: PRINT "URL:": INK 0: PAPER 7: PRINT "wur.nl"
700 INK 7: PAPER 0: PRINT "By:": INK 0: PAPER 7: PRINT "bookofjoe"
710 INK 7: PAPER 0: PRINT "Posted:": INK 0: PAPER 7: PRINT "9h ago"
720 INK 7: PAPER 0: PRINT "Comments (42): (1)": INK 0: PAPER 7
730 INK 0: PAPER 5: PRINT "skrebbel (6h ago):": INK 0: PAPER 7: PRINT "Ever thought you yanked a dandelion out by the entire root? Think again: https://images.wur.nl/digital/collection/coll13/id/676/rec/3"
740 PRINT AT 20,0;"________________________________"
750 PRINT AT 21,0;"[M]ore, [B]ack"
760 PAUSE 0
770 LET k$=INKEY$
780 IF k$="B" OR k$="b" THEN GO TO 70
790 IF k$="M" OR k$="m" THEN GO TO 820
800 GO TO 760
810 REM Second comment
820 GO SUB 1000
830 INK 7: PAPER 0: PRINT AT 4,0;"Comments (42): (2)": INK 0: PAPER 7
840 INK 0: PAPER 5: PRINT "daemonologist (11h ago):": INK 0: PAPER 7: PRINT "How are these produced? I assume they're not actually digging a giant trench and taking a section, but are the drawings based on measurements of a specific individual in some way? In any case, very cool to have such a collection."
850 PRINT AT 20,0;"________________________________"
860 PRINT AT 21,0;"[M]ore, [B]ack"
870 PAUSE 0
880 LET k$=INKEY$
890 IF k$="B" OR k$="b" THEN GO TO 650
900 IF k$="M" OR k$="m" THEN GO TO 930
910 GO TO 870
920 REM Third comment
930 GO SUB 1000
940 INK 7: PAPER 0: PRINT AT 4,0;"Comments (42): (3)": INK 0: PAPER 7
950 INK 0: PAPER 5: PRINT "emil-lp (8h ago):": INK 0: PAPER 7: PRINT "Previously 71 comments https://news.ycombinator.com/item?id=39974646 16 comments https://news.ycombinator.com/item?id=29672733 18 comments https://news.ycombinator.com/item?id=29672733"
960 PAUSE 0
970 LET k$=INKEY$
980 IF k$="B" OR k$="b" THEN GO TO 820
990 GO TO 960
1000 REM Next comment page (Clear part of screen)
1010 FOR y=4 TO 19
1020 PRINT AT y,0;"                                "
1030 NEXT y
1040 RETURN
1050 REM Submit
1060 CLS
1070 GO SUB 40
1080 LET t$=""
1090 LET u$=""
1100 LET e$=""
1110 INK 7: PAPER 0: PRINT AT 0,13;"Submit": INK 0: PAPER 7
1120 INK 7: PAPER 0: PRINT "title:": INK 0: PAPER 7
1130 PRINT AT 2,0;t$
1140 INK 7: PAPER 0: PRINT AT 4,0;"url:": INK 0: PAPER 7
1150 PRINT AT 5,0;u$
1160 INK 7: PAPER 0: PRINT AT 7,0;"text:": INK 0: PAPER 7
1170 PRINT AT 8,0;e$
1180 PRINT AT 19,0;"________________________________"
1190 PRINT AT 20,0;"[t]itle, [u]rl, t[e]xt"
1200 PRINT AT 21,0;"[S]ubmit, [B]ack"
1210 PAUSE 0
1220 LET k$=INKEY$
1230 IF k$="T" OR k$="t" THEN INPUT t$: GO TO 1130
1240 IF k$="U" OR k$="u" THEN INPUT u$: GO TO 1150
1250 IF k$="E" OR k$="e" THEN INPUT e$: GO TO 1170
1260 IF k$="B" OR k$="b" OR k$="S" OR k$="s" THEN GO TO 70
1270 GO TO 1210
