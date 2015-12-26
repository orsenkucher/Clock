{Часы}
{Остановился на рефреше 59}
uses Crt,
     Dos;
const WinConst = 10;
      VertPos = 8;
{----ScreenCleaner----}
procedure pScreen;
    begin
        textbackground(0);
        clrscr;
        textcolor(15);
    end;
{----Zero----}
procedure pZero;
    begin
        writeln(' _______ ');
        writeln('(  __   )');
        writeln('| (  )  |');
        writeln('| | /   |');
        writeln('| (/ /) |');
        writeln('|   / | |');
        writeln('|  (__) |');
        writeln('(_______)');
    end;
{----One----}
procedure pOne;
    begin
        writeln('   __    ');
        writeln('  /  \   ');
        writeln('  \/) )  ');
        writeln('    | |  ');
        writeln('    | |  ');
        writeln('    | |  ');
        writeln('  __) (_ ');
        writeln('  \____/ ');
    end;
{----Two----}
procedure pTwo;
    begin
        writeln(' _______ ');
        writeln('/ ___   )');
        writeln('\/   )  |');
        writeln('    /   )');
        writeln('  _/   / ');
        writeln(' /   _/  ');
        writeln('(   (__/\');
        writeln('\_______/');
    end;
{----Three----}
procedure pThree;
    begin
        writeln(' ______  ');
        writeln('/ ___  \ ');
        writeln('\/   \  \');
        writeln('  ___)  / ');
        writeln(' (___  (  ');
        writeln('     )  \ ');
        writeln('/\___/  /');
        writeln('\______/ ');
    end;
{----Four----}
procedure pFour;
    begin
        writeln('    ___  ');
        writeln('   /   ) ');
        writeln('  / /) | ');
        writeln(' / (_) | ');
        writeln('(____   )');
        writeln('     ) | ');
        writeln('     | | ');
        writeln('     (_) ');
    end;
{----Five----}
procedure pFive;
    begin
        writeln(' _______ ');
        writeln('(  ____ \');
        writeln('| (    \/');
        writeln('| (____  ');
        writeln('(_____ \ ');
        writeln('      ) )');
        writeln('/\____) )');
        writeln('\______/ ');
    end;
{----Six----}
procedure pSix;
    begin
        writeln('  ______ ');
        writeln(' / ____ \');
        writeln('( (    \/');
        writeln('| (____  ');
        writeln('|  ___ \ ');
        writeln('| (   ) )');
        writeln('( (___) )');
        writeln(' \_____/ ');
    end;
{----Seven----}
procedure pSeven;
    begin
        writeln(' ______  ');
        writeln('/ ___  \ ');
        writeln('\/   )  )');
        writeln('    /  / ');
        writeln('   /  /  ');
        writeln('  /  /   ');
        writeln(' /  /    ');
        writeln(' \_/     ');
    end;
{----Eight----}
procedure pEight;
    begin
        writeln('  _____  ');
        writeln(' / ___ \ ');
        writeln('( (___) )');
        writeln(' \     / ');
        writeln(' / ___ \ ');
        writeln('( (   ) )');
        writeln('( (___) )');
        writeln(' \_____/ ');
    end;
{----Nine----}
procedure pNine;
    begin
        writeln('  _____  ');
        writeln(' / ___ \ ');
        writeln('( (   ) )');
        writeln('( (___) |');
        writeln(' \____  |');
        writeln('      ) |');
        writeln('/\____) )');
        writeln('\______/ ');
    end;
{----Hours----}
procedure pH(h:word);
    begin
        if h < 10 then
            begin
                window(1,VertPos,WinConst,VertPos+9);
                pZero;
                window(WinConst,VertPos,WinConst*2,VertPos+9);
                case h of
                    0: pZero;
                    1: pOne;
                    2: pTwo;
                    3: pThree;
                    4: pFour;
                    5: pFive;
                    6: pSix;
                    7: pSeven;
                    8: pEight;
                    9: pNine;
                end;
            end;
        if h >= 10 then
            begin
                case h div 10 of
                    1: begin window(1,VertPos,WinConst,VertPos+9); pOne; end;
                    2: begin window(1,VertPos,WinConst,VertPos+9); pTwo; end;
                end;

                case h mod 10 of
                    0: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pZero;    end;
                    1: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pOne;     end;
                    2: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pTwo;     end;
                    3: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pThree;   end;
                    4: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pFour;    end;
                    5: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pFive;    end;
                    6: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pSix;     end;
                    7: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pSeven;   end;
                    8: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pEight;   end;
                    9: begin window(WinConst,VertPos,WinConst*2,VertPos+9); pNine;    end;
                end;
            end;
    end;
{----Minutes----}
procedure pM(m:word);
    begin
        if m < 10 then
            begin
                window(WinConst*2,VertPos,WinConst*3,VertPos+9);
                pZero;
                window(WinConst*3,VertPos,WinConst*4,VertPos+9);
                case m of
                    0: pZero;
                    1: pOne;
                    2: pTwo;
                    3: pThree;
                    4: pFour;
                    5: pFive;
                    6: pSix;
                    7: pSeven;
                    8: pEight;
                    9: pNine;
                end;
            end;
        if m >= 10 then
            begin
                case m div 10 of
                    1: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pOne; end;
                    2: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pTwo; end;
                    3: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pThree;   end;
                    4: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pFour;    end;
                    5: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pFive;    end;
                    6: begin window(WinConst*2,VertPos,WinConst*3,VertPos+9); pSix;     end;
                end;

                case m mod 10 of
                    0: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pZero;    end;
                    1: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pOne;     end;
                    2: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pTwo;     end;
                    3: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pThree;   end;
                    4: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pFour;    end;
                    5: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pFive;    end;
                    6: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pSix;     end;
                    7: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pSeven;   end;
                    8: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pEight;   end;
                    9: begin window(WinConst*3,VertPos,WinConst*4,VertPos+9); pNine;    end;
                end;
            end;
    end;
{----Seconds----}
procedure pS(s:word);
    begin
        if s < 10 then
            begin
                window(WinConst*4,VertPos,WinConst*5,VertPos+9);
                pZero;
                window(WinConst*5,VertPos,WinConst*6,VertPos+9);
                case s of
                    0: pZero;
                    1: pOne;
                    2: pTwo;
                    3: pThree;
                    4: pFour;
                    5: pFive;
                    6: pSix;
                    7: pSeven;
                    8: pEight;
                    9: pNine;
                end;
            end;
        if s >= 10 then
            begin
                case s div 10 of
                    1: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pOne; end;
                    2: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pTwo; end;
                    3: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pThree;   end;
                    4: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pFour;    end;
                    5: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pFive;    end;
                    6: begin window(WinConst*4,VertPos,WinConst*5,VertPos+9); pSix;     end;
                end;

                case s mod 10 of
                    0: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pZero;    end;
                    1: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pOne;     end;
                    2: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pTwo;     end;
                    3: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pThree;   end;
                    4: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pFour;    end;
                    5: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pFive;    end;
                    6: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pSix;     end;
                    7: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pSeven;   end;
                    8: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pEight;   end;
                    9: begin window(WinConst*5,VertPos,WinConst*6,VertPos+9); pNine;    end;
                end;
            end;
    end;
{----miliSeconds----}
procedure pMs(ms:word);
    begin
        if ms < 10 then
            begin
                window(WinConst*6,VertPos,WinConst*7,VertPos+9);
                pZero;
                window(WinConst*7,VertPos,WinConst*8,VertPos+9);
                case ms of
                    0: pZero;
                    1: pOne;
                    2: pTwo;
                    3: pThree;
                    4: pFour;
                    5: pFive;
                    6: pSix;
                    7: pSeven;
                    8: pEight;
                    9: pNine;
                end;
            end;
        if ms >= 10 then
            begin
                case ms div 10 of
                    1: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pOne;     end;
                    2: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pTwo;     end;
                    3: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pThree;   end;
                    4: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pFour;    end;
                    5: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pFive;    end;
                    6: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pSix;     end;
                    7: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pSeven;   end;
                    8: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pEight;   end;
                    9: begin window(WinConst*6,VertPos,WinConst*7,VertPos+9); pNine;    end;
                end;

                case ms mod 10 of
                    0: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pZero;    end;
                    1: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pOne;     end;
                    2: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pTwo;     end;
                    3: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pThree;   end;
                    4: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pFour;    end;
                    5: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pFive;    end;
                    6: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pSix;     end;
                    7: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pSeven;   end;
                    8: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pEight;   end;
                    9: begin window(WinConst*7,VertPos,WinConst*8,VertPos+9); pNine;    end;
                end;
            end;
    end;
{----SecondLine----}
procedure pSecLine;
    var i:integer;
    begin
        window(1,1,80,25);

        gotoxy(10,VertPos-1);
        textcolor(15);
        for i:=1 to 60 do
            write('-');

        gotoxy(10,VertPos+9);
        textcolor(15);
        for i:=1 to 60 do
            write('-');
    end;
{----MinuteLine----}
procedure pMinLine;
    var i:integer;
    begin
        window(1,1,80,25);

        gotoxy(10,VertPos-2);
        textcolor(15);
        for i:=1 to 60 do
            write('-');

        gotoxy(10,VertPos+10);
        textcolor(15);
        for i:=1 to 60 do
            write('-');
    end;
{----HourLine----}
procedure pHourLine;
    var i:integer;
    begin
        window(1,1,80,25);

        gotoxy(28,VertPos-3);
        textcolor(15);
        for i:=1 to 24 do
            write('-');

        gotoxy(28,VertPos+11);
        textcolor(15);
        for i:=1 to 24 do
            write('-');
    end;
{----CurrentSecond----}
procedure pCurrSec(s:word);
    begin
        gotoxy(10+s-1,VertPos-1);
        textcolor(15);
        if s <> 0 then
            write('-');
        gotoxy(10+s,VertPos-1);
        textcolor(12);
        write('=');

        gotoxy(10+s-1,VertPos+9);
        textcolor(15);
        if s <> 0 then
            write('-');
        gotoxy(10+s,VertPos+9);
        textcolor(12);
        write('=');

        if s = 0 then
            begin
                gotoxy(10+59,VertPos-1);
                textcolor(15);
                write('-');
                gotoxy(10+59,VertPos+9);
                write('-');
            end;
    end;
{----CurrentMinute----}
procedure pCurrMin(m:word);
    begin
        gotoxy(10+m-1,VertPos-2);
        textcolor(15);
        if m <> 0 then
            write('-');
        gotoxy(10+m,VertPos-2);
        textcolor(13);
        write('=');

        gotoxy(10+m-1,VertPos+10);
        textcolor(15);
        if m <> 0 then
            write('-');
        gotoxy(10+m,VertPos+10);
        textcolor(13);
        write('=');

        if m = 0 then
            begin
                gotoxy(10+59,VertPos-2);
                textcolor(15);
                write('-');
                gotoxy(10+59,VertPos+10);
                write('-');
            end;
    end;
{----CurrentHour----}
procedure pCurrHour(h:word);
    begin
        gotoxy(28+h-1,VertPos-3);
        textcolor(15);
        if h <> 0 then
            write('-');
        gotoxy(28+h,VertPos-3);
        textcolor(14);
        write('=');

        gotoxy(28+h-1,VertPos+11);
        textcolor(15);
        if h <> 0 then
            write('-');
        gotoxy(28+h,VertPos+11);
        textcolor(14);
        write('=');

        if h = 23 then
            pHourLine;

        if h = 0 then
            begin
                gotoxy(10+59,VertPos-3);
                textcolor(15);
                write('-');
                gotoxy(10+59,VertPos+11);
                write('-');
            end;
    end;
{----Clock----}
procedure pClock;
    var h, m, s, ms:word;
    begin
        GetTime(h,m,s,ms);
        textcolor(14);
        pH(h);
        textcolor(13);
        pM(m);
        textcolor(12);
        pS(s);
        textcolor(11);
        pMs(ms);
        window(1,1,80,25);
        pCurrSec(s);
        pCurrMin(m);
        pCurrHour(h);
        textcolor(15);
        gotoxy(1,24);
        writeln('h  m  s  ms');
        write(h:2,' ',m:2,' ',s:2,' ',ms:2);
    end;
{----Main----}
begin
    pScreen;
    pSecLine;
    pMinLine;
    pHourLine;
    repeat
        pClock;
        //delay(100);
    until KeyPressed;
end.

 _______    __      _______    ______        ___      _______     ______
(  __   )  /  \    / ___   )  / ___  \      /   )    (  ____ \   / ____ \
| (  )  |  \/) )   \/   )  |  \/   \  \    / /) |    | (    \/  ( (    \/
| | /   |    | |       /   )     ___) /   / (_) (    | (____    | (____
| (/ /) |    | |     _/   /     (___ (   (____   )   (_____ \   |  ___ \
|   / | |    | |    /   _/          ) \       ) (          ) )  | (   ) )
|  (__) |  __) (_  (   (__/\  /\___/  /       | |    /\____) )  ( (___) )
(_______)  \____/  \_______/  \______/        (_)    \______/    \_____/

 ______      _____      _____
/ ___  \    / ___ \    / ___ \
\/   )  )  ( (___) )  ( (   ) )
    /  /    \     /   ( (___) |
   /  /     / ___ \    \____  |
  /  /     ( (   ) )        ) |
 /  /      ( (___) )  /\____) )
 \_/        \_____/   \______/
