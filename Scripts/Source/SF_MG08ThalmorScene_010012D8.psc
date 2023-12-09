;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname SF_MG08ThalmorScene_010012D8 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
Ancano.GetActorRef().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Eye.PlaceAtMe(MGEyeRemoveExplosion)
Utility.Wait(0.5)
MGTeleportOutEffect.Play(Ancano.GetReference())
Utility.Wait(1.0)
Ancano.GetActorReference().SetAlpha(0.1,true)
Eye.Disable(1)
Utility.Wait(3.0)
Ancano.GetReference().Disable()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property Ancano  Auto  

VisualEffect Property MGTeleportOutEffect  Auto  

Explosion Property MGEyeRemoveExplosion  Auto  

ObjectReference Property Eye  Auto  
