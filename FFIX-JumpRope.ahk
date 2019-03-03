SendMode Input
SetBatchLines , -1

j::
TimePeriod = 1
DllCall("Winmm\timeBeginPeriod", uint, TimePeriod)
DllCall("Sleep", UInt, 500)
Send , {enter down}
DllCall("Sleep", UInt, 100)
Send , {enter up}

DllCall("Sleep", UInt, 691) ;;; <== Latency value here
; 690


Loop , 19 ;;; Jumps 2-20
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 565)
}
Loop , 30 ;;; Jumps 21-50
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 430)
}
Loop , 50 ;;; Jumps 51-100
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 365)
}
Loop , 99 ;;; Jumps 101-200
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 332)
    ; DllCall("Sleep", UInt, 335)
}
Loop , 100 ;;; Jumps 201-300
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 282) ;283
}
Loop , 200 ;;; Jumps 301-500
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 298) ;300
}
Loop , 100 ;;; Jumps 501-600
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 298) ;298
}
Loop , 100 ;;; Jumps 601-700
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 298) ;297
}
Loop , 100 ;;; Jumps 701-800
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 299) ;298
}
Loop , 100 ;;; Jumps 800-899
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 298) ;298
}
Loop , 100 ;;; Jumps 900-999
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 299) ;298
}
Loop , 100 ;;; Jumps 1000-1099
{
    Send , {enter down}
    DllCall("Sleep", UInt, 100)
    Send , {enter up}
    DllCall("Sleep", UInt, 298) ;298
}


DllCall("Winmm\timeEndPeriod", UInt, TimePeriod)
Return

r::Reload
esc::pause ; esc = pause, esc again = continue
