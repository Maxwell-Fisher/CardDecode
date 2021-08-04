@echo off
cls
title Card Decoder - @Maxwellcrafter
setLocal enableDelayedExpansion

echo Enter the full 16 digit card number
set /p full=: 
echo.
set full=%full: =% 
echo Formatted card number: %full:~0,1%%full:~1,1%%full:~2,1%%full:~3,1% %full:~4,1%%full:~5,1%%full:~6,1%%full:~7,1% %full:~8,1%%full:~9,1%%full:~10,1%%full:~11,1% %full:~12,1%%full:~13,1%%full:~14,1%%full:~15,1%
echo.
set issuer.known=0
echo Card issuer:
if "%full:~0,7%" == "6054740" echo NPS Pridnestrovie && set issuer.known=1
if "%full:~0,7%" == "6054741" echo NPS Pridnestrovie && set issuer.known=1
if "%full:~0,7%" == "6054742" echo NPS Pridnestrovie && set issuer.known=1
if "%full:~0,7%" == "6054743" echo NPS Pridnestrovie && set issuer.known=1
if "%full:~0,7%" == "6054744" echo NPS Pridnestrovie && set issuer.known=1
if "%full:~0,6%" == "560221" echo Bankcard && set issuer.known=1
if "%full:~0,6%" == "560222" echo Bankcard && set issuer.known=1
if "%full:~0,6%" == "560223" echo Bankcard && set issuer.known=1
if "%full:~0,6%" == "560224" echo Bankcard && set issuer.known=1
if "%full:~0,6%" == "560225" echo Bankcard && set issuer.known=1
if "%full:~0,6%" == "676770" echo Maestro (uk) && set issuer.known=1
if "%full:~0,6%" == "676774" echo Maestro (uk) && set issuer.known=1
if "%full:~0,6%" == "564182" echo Switch && set issuer.known=1
if "%full:~0,6%" == "633110" echo Switch && set issuer.known=1
if "%full:~0,6%" == "417500" echo Visa Electron && set issuer.known=1
if "%full:~0,1%" == "357111" echo Lankapay && set issuer.known=1
if "%full:~0,4%" == "5610" echo Bankcard && set issuer.known=1
if "%full:~0,4%" == "6011" echo Discover Card && set issuer.known=1
if "%full:~0,4%" == "6521" echo RuPay && set issuer.known=1
if "%full:~0,4%" == "6522" echo RuPay && set issuer.known=1
if "%full:~0,4%" == "6304" echo Laser && set issuer.known=1
if "%full:~0,4%" == "6706" echo Laser && set issuer.known=1
if "%full:~0,4%" == "6771" echo Laser && set issuer.known=1
if "%full:~0,4%" == "6709" echo Laser && set issuer.known=1
if "%full:~0,4%" == "6759" echo Maestro (uk) && set issuer.known=1
if "%full:~0,4%" == "5018" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "5020" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "5038" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "5893" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "6304" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "6759" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "6761" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "6762" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "6763" echo Maestro && set issuer.known=1
if "%full:~0,4%" == "5019" echo Dankort && set issuer.known=1
if "%full:~0,4%" == "4571" echo Dankort (Visa co-branded) && set issuer.known=1
if "%full:~0,4%" == "2200" echo MIR && set issuer.known=1
if "%full:~0,4%" == "2201" echo MIR && set issuer.known=1
if "%full:~0,4%" == "2202" echo MIR && set issuer.known=1
if "%full:~0,4%" == "2203" echo MIR && set issuer.known=1
if "%full:~0,4%" == "2204" echo MIR && set issuer.known=1
if "%full:~0,4%" == "6334" echo Solo && set issuer.known=1
if "%full:~0,4%" == "6767" echo Solo && set issuer.known=1
if "%full:~0,4%" == "4903" echo Switch && set issuer.known=1
if "%full:~0,4%" == "4905" echo Switch && set issuer.known=1
if "%full:~0,4%" == "4911" echo Switch && set issuer.known=1
if "%full:~0,4%" == "4936" echo Switch && set issuer.known=1
if "%full:~0,4%" == "6333" echo Switch && set issuer.known=1
if "%full:~0,4%" == "6759" echo Switch && set issuer.known=1
if "%full:~0,4%" == "4026" echo Visa Electron && set issuer.known=1
if "%full:~0,4%" == "4508" echo Visa Electron && set issuer.known=1
if "%full:~0,4%" == "4844" echo Visa Electron && set issuer.known=1
if "%full:~0,4%" == "4913" echo Visa Electron && set issuer.known=1
if "%full:~0,4%" == "4917" echo Visa Electron && set issuer.known=1
if "%full:~0,4%" == "9792" echo Troy && set issuer.known=1
if "%full:~0,3%" == "644" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "645" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "646" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "647" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "648" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "649" echo Discover Card && set issuer.known=1
if "%full:~0,3%" == "636" echo InterPayment && set issuer.known=1
if "%full:~0,3%" == "637" echo InstaPayment && set issuer.known=1
if "%full:~0,3%" == "638" echo InstaPayment && set issuer.known=1
if "%full:~0,3%" == "639" echo InstaPayment && set issuer.known=1
if "%full:~0,2%" == "34" echo American Express && set issuer.known=1
if "%full:~0,2%" == "37" echo American Express && set issuer.known=1
if "%full:~0,2%" == "31" echo China T-Union && set issuer.known=1
if "%full:~0,2%" == "62" echo China UnionPay && set issuer.known=1
if "%full:~0,2%" == "36" echo Diners Club (international) && set issuer.known=1
if "%full:~0,2%" == "54" echo Diners Club (us & canada) && set issuer.known=1
if "%full:~0,2%" == "65" echo Discover Card && set issuer.known=1
if "%full:~0,2%" == "60" echo RuPay && set issuer.known=1
if "%full:~0,2%" == "51" echo Mastercard && set issuer.known=1
if "%full:~0,2%" == "52" echo Mastercard && set issuer.known=1
if "%full:~0,2%" == "53" echo Mastercard && set issuer.known=1
if "%full:~0,2%" == "54" echo Mastercard && set issuer.known=1
if "%full:~0,2%" == "55" echo Mastercard && set issuer.known=1
if "%full:~0,2%" == "65" echo Troy && set issuer.known=1
if "%full:~0,1%" == "4" echo Visa && set issuer.known=1
if "%full:~0,1%" == "1" echo UATP && set issuer.known=1

rem Numbers to add:
rem 60400100–60420099 UkrCard
rem 506099–506198 Verve
rem 650002–650027 Verve
rem 622126–622925 Discover Card
rem 3528–3589 JCB
rem 2221–2720 Mastercard

if "%issuer.known%" == "0" echo Unknown

echo.

echo Industry:

if "%full:~0,1%" == "0" echo International Standard Orginization
if "%full:~0,1%" == "1" echo Airlines
if "%full:~0,1%" == "2" echo Airlines
if "%full:~0,1%" == "3" echo Travel & entertainment
if "%full:~0,1%" == "4" echo Banking
if "%full:~0,1%" == "5" echo Banking
if "%full:~0,1%" == "6" echo Banking & merchandise
if "%full:~0,1%" == "7" echo Petroleum
if "%full:~0,1%" == "8" echo Healthcare & communications
if "%full:~0,1%" == "9" echo Government

echo.

Echo Luhn check:
call :luhn %full:~0,1%%full:~1,1%%full:~2,1%%full:~3,1%%full:~4,1%%full:~5,1%%full:~6,1%%full:~7,1%%full:~8,1%%full:~9,1%%full:~10,1%%full:~11,1%%full:~12,1%%full:~13,1%%full:~14,1%%full:~15,1%

:end
echo.
pause
exit

:luhn
set "input=%1"
set "cnt=0"
set "s1=0"
set "s2=0"
:digit_loop
set /a "cnt-=1"
set /a "isOdd=(-%cnt%)%%2"
if !isodd! equ 1 (
set /a "s1+=!input:~%cnt%,1!"
) else (
set /a "twice=!input:~%cnt%,1!*2"
if !twice! geq 10 (
set /a "s2+=!twice:~0,1!+!twice:~1,1!"
) else (
set /a "s2+=!twice!"
)
)
if "!input:~%cnt%!"=="!input!" (
set /a "sum=(!s1!+!s2!)%%10"
if !sum! equ 0 (echo Valid.) else (echo Invalid.)
goto :EOF
)
goto digit_loop
exit /B