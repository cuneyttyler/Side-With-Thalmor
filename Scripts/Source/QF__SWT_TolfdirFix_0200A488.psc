;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname QF__SWT_TolfdirFix_0200A488 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Tolfdir
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Tolfdir Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
Debug.Trace("SWT: Fixed Tolfdir")
ActorUtil.ClearPackageOverride(Alias_Tolfdir.GetActorRef())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


