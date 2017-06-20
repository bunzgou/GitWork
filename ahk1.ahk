sizes := 4
colors := 7
xsizes := 0

;====================;
;====>  SCRIPT  <====;
;====================;

tuotteita := colors * sizes + xsizes -1
kokoja := sizes -1


;====> ENG TUOTEKUVAUS
PGDN::
Send {backspace}{backspace}
Send {enter}
Return

;====> ERP RIVIEN LUONTI 
^+ä::
Sleep, 200
Send ^c
Loop %tuotteita% {
Send {down}
Send ^v
}
Sleep, 200
Send {right}{right}
Loop %tuotteita% {
Send +{up}
}
MouseMove 430, 105
Sleep, 100
Send {LButton}
Sleep, 100
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
Send {right}{right}
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
NumpadAdd::
Send ^s
Sleep, 150
Reload
return

;==; KOPIOI YLEMMÄN SOLUN TIETO
end::
Send {up}
Send ^c
Send {down}
Send ^v
Sleep, 300
Send {control}
Sleep, 300
Send {down}{down}{enter}
Return

;===; PEW
Xbutton1::
IfWinExist, r_erp-syöttölista
    WinActivate, r_erp-syöttölista
else
    Run, C:\Users\Varasto\Documents\r_erp-syöttölista.xls
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_fireball.wav
Sleep, 500
SoundPlay, C:\Users\Varasto\Desktop\Erppi\smb_kick.wav
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

;====> SYÖTTÖLISTAN TIEDOT 2
^+p::
Sleep, 1000
Send ^h
Sleep, 200
Send +{tab}
Send 15
Send {tab}
Send Harmaa
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 16
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 17
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 89
Send {tab}{tab}{tab}{enter}
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
Send 95
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 96
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 97
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 98
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 176
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 195
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
Send 22
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 99
Send {tab}
Send Musta
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 341
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 18
Send {tab}
Send Punainen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 24
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
Send 27
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 28
Send {tab}{tab}{tab}{enter}
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
Send 64
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 74
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 78
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 79
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 82
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 83
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 84
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 85
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 86
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 88
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 123
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 124
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 132
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 184
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 65
Send {tab}
Send Ruskea
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 66
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 67
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 68
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 19
Send {tab}
Send Sininen
Send {tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 23
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 50
Send {tab}{tab}{tab}{enter}
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
Send 60
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 62
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 71
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 73
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 75
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 76
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 77
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 80
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 88
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 90
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 170
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 171
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
Send 12
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 109
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
Send 47
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
Send 63
Send {tab}{tab}{tab}{enter}
Send {enter}
Send +{tab}+{tab}+{tab}
Send 147
Send {tab}{tab}{tab}{enter}
Send {enter}
Send {tab}{tab}{tab}{tab}
Send {enter}
Return

;====> SYÖTTÖLISTAN TIEDOT 3
Ins::
Send {=}pienet(c1)
Send {enter}
Send {up}
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