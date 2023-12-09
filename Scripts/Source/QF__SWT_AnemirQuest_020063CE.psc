;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname QF__SWT_AnemirQuest_020063CE Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(0)
SetObjectiveDisplayed(10)

If (MG04.IsCompleted())
   If (MG08.IsCompleted())
   Else
       ADMG.SetStage(5)
   EndIf
Endif

_SWT_AnemirTalkTime.SetValueInt(GameDaysPassed.GetValueInt())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property MG04  Auto  

Quest Property MG08  Auto  

Quest Property ADMG  Auto  

GlobalVariable Property _SWT_AnemirTalkTime  Auto  

GlobalVariable Property GameDaysPassed  Auto  
