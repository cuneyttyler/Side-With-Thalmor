;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__01007410 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Utility.Wait(2)
MGTeleportOutEffect.Play(MG07EstormoAlias.GetReference(),3.6)
Utility.Wait(1.5)
MG07EstormoAlias.GetReference().Disable()
_SWT_MG08_EstormoOfferAccepted.SetValueInt(1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

VisualEffect Property MGTeleportOutEffect  Auto  

ReferenceAlias Property MG07EstormoAlias  Auto  

GlobalVariable Property _SWT_MG08_EstormoOfferAccepted Auto
