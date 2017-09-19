sizes := 6
colors := 5
xsizes := 0

;====================;
;====>  SCRIPT  <====;
;====================;

tuotteita := colors * sizes + xsizes -1
kokoja := sizes -1
print_txt := "Stormtech"
erp_win_title := "Stormtech erp -joni"
; ="Stormtech" & "/" & A1 & "/" & A1 & "-" & C1 & ".jpg"
; =A1 & "-" & C1

;====> TEST ZONE


;====> SYÖTTÖLISTAN TIEDOT 3
^Xbutton1::
BlockInput, MouseMove
IfWinExist, r_erp-syöttölista 
    WinActivate, r_erp-syöttölista
else
    Run, C:\Users\Varasto\Documents\r_erp-syöttölista.xls
Sleep, 800
WinWait, r_erp-syöttölista
Winmove, r_erp-syöttölista,,870,30,800,900
Sleep, 1000
Send {Esc}
Send ^s
MouseMove, 780, 10
Send {LButton}
BlockInput, MouseMoveOff
WinActivate, Nimikelista
WinWait, Nimikelista
BlockInput, MouseMove
Send {alt}
Send {right}{down}{enter}
WinWait, Nimikelista (r_erp-syöttölista.rpt)
MouseMove, 22, 275
Sleep, 100
Send {LButton}
Sleep, 50
MouseMove, 400, 50
Send {LButton}
Sleep, 1000
MouseMove, 30, 60
Send {LButton}
WinWait, Export
Send {down 4}
Send {Enter}
WinWait, Excel Format Options
Send {Enter}
WinWait, Select Export File
Send {Enter}
WinWait, File already exists
Send {Enter}
Sleep, 500
Send {alt}
Send {Enter}
Sleep, 300
Send {Tab}
Send {Enter}
Run, C:\Users\Varasto\Documents\r_erp-syöttölista.xls
Sleep, 800
WinWait, r_erp-syöttölista
Winmove, r_erp-syöttölista,,870,30,800,900
Sleep, 800
Send {right}
Send {=}pienet(c1)
Send {enter}
Send {up}
Send ^s
BlockInput, MouseMoveOff
Return

PgUp::
BlockInput, MouseMoveOff
Return

;====> ENG TUOTEKUVAUS
PGDN::
Send {backspace 2}
Send {enter}
Return

;====> ERP RIVIEN LUONTI 
HOME::
Sleep, 500
Send ^h
Sleep, 200
Send +{tab}
Send •{space}
Send {tab}
Send {backspace}
Send {tab 2}{enter}
Send {enter}
Send {tab 4}
Send {enter}
Return

;====> ERP RIVIEN LUONTI 
^+ä::
BlockInput, MouseMove
Sleep, 200
Send ^c
Loop %tuotteita% {
Send {down}
Send ^v
}
Sleep, 200
Send {right 2}
Loop %tuotteita% {
Send +{up}
}
WinActivate, %erp_win_title%
WinWaitActive, %erp_win_title%
Winmove, %erp_win_title%,,0,0,900,1000
Sleep, 200
MouseMove 375, 95
Sleep, 100
Send {LButton}
Sleep, 100
BlockInput, MouseMoveOff
Send {right}
Loop %tuotteita% {
Send +{down}
}
Send !{enter}
Loop 16 {
Send {right}
}
Loop 7 {
Loop %tuotteita% {
Send +{down}
}
Send !{enter}
Send {right}
}
Loop 10 {
Send ^{left}
}
Send {right 2}
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_powerup.wav
Return

;====> ????
ö::
Send +{down}
Send !{enter}
Send {right}
Return

;====> KOPIOI TIETO KAIKKIIN KOKOIHIN
å::
Send {enter}
Send {up}
Loop %kokoja% {
Send ^c
Send {down}
Send {enter}
}
Send {down}
Return

;====> TALLENNA JA LATAA
^NumpadAdd::
Send ^s
Sleep, 150
Reload
return

;==; KOPIOI YLEMMÄN SOLUN TIETO
END::
Send {up}
Send ^c
Send {down}
Send ^v
Sleep, 500
Send {control}
Sleep, 500
Send {down 2}{enter}
Return

;===; PEW
Xbutton1::
IfWinExist, r_erp-syöttölista 
    WinActivate, r_erp-syöttölista
else
    Run, C:\Users\Varasto\Documents\r_erp-syöttölista.xls
Sleep, 800
WinWait, r_erp-syöttölista
Winmove, r_erp-syöttölista,,870,30,800,900
Send ^s
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_fireball.wav
Sleep, 500
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_kick.wav
Sleep, 200
Return

;===; PEW PEW
Xbutton2::
IfWinExist, muokkelis
    WinActivate, muokkelis
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_fireball.wav
Sleep, 150
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_fireball.wav
Sleep, 500
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_kick.wav
Sleep, 150
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_kick.wav
Return

;===; SYÖTTÖLISTAN TIEDOT 1
^+å::
Sleep, 1000
Send {down}
Send ^h
Sleep, 200
Send +{tab}
Send 6XL &*-
Send {tab}
Send (
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send 5
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send 4
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send 3
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send 2
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send XX
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send M
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send XS
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send ^{left}^{left}
Send {del}
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send -*&
Send {tab}
Send )
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send @*-
Send {tab}
Send {del}
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send -*@
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send $*-*-
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 1$
Send {tab}
Send XS
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 2$
Send {tab}
Send S
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 3$
Send {tab}
Send M
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 4$
Send {tab}
Send L
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 5$
Send {tab}
Send XL
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 6$
Send {tab}
Send 2XL
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 7$
Send {tab}
Send 3XL
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 8$
Send {tab}
Send 4XL
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 9$
Send {tab}
Send 5XL
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 10$
Send {tab}
Send 6XL
Send {tab}{tab}{enter}
Send {enter}
Send {tab}{tab}{tab}{tab}
Send {enter}
Return

;==; SYÖTTÖLISTAN TIEDOT 1 (LAPSET)
^!å::
Sleep, 1000
Send {tab}
Send +{tab}
Send 1* &*-
Send {tab}
Send (
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 9* &*-
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send -*&
Send {tab}
Send )
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send @*-
Send {tab}
Send {del}
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send -*@
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send $*-*-
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send $
Send {tab}{tab}{tab}{enter}
Send {enter}
Send {tab}{tab}{tab}{tab}
Send {enter}
Return

;====> SYÖTTÖLISTAN TIEDOT 2 (muokkaus)
;NumpadSub::
;Send {down}{down}{down}{down}
;Send ^{left}
;Send ^+{right}
;Return

;====> SYÖTTÖLISTAN TIEDOT 2
^+p::
Sleep, 1000
Send ^h
Sleep, 200
Send +{tab}

Send 13
Send {tab}
Send Harmaa
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 91
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 92
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 93
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 94
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 96
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 98
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 20
Send {tab}
Send Keltainen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 21
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 23
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 25
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 26
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 99
Send {tab}
Send Musta
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 95
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 97
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 27
Send {tab}
Send Punainen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 29
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 30
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 31
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 32
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 33
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 34
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 35
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 36
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 37
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 38
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 39
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 81
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 60
Send {tab}
Send Ruskea
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 61
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 63
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 66
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 68
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 69
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 70
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 50
Send {tab}
Send Sininen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 51
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 52
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 53
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 54
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 55
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 56
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 57
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 58
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 59
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 10
Send {tab}
Send Valkoinen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 11
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}

Send 40
Send {tab}
Send Vihreä
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 41
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 42
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 43
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 44
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 45
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 46
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 48
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 49
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 188
Send {tab}{tab}{tab}{enter}
Send {enter}
Send {tab}{tab}{tab}{tab}
Send {enter}
Return

;====> VÄRIT
F5::
Send Musta
Send å
Return

F6::
Send Valkoinen
Send å
Return

F7::
Send Harmaa
Send å
Return

F8::
Send Punainen
Send å
Return

F9::
Send Sininen
Send å
Return

F10::
Send Vihreä
Send å
Return

F11::
Send Keltainen
Send å
Return

F12::
Send Ruskea
Send å
Return

;====> TALLENNUS
^+s::
Send ^s
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_1-up.wav
return

;====> LUKITUS
^!Esc::
SoundSet, 100
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_world_clear.wav
Sleep, 7000
SoundSet, 50
DllCall("LockWorkStation")
return