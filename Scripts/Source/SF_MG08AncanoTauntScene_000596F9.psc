;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname SF_MG08AncanoTauntScene_000596F9 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
MG08EyeAlias.GetReference().PlayAnimation("Open")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
(self.GetOwningQuest() as mg08questscript).GoTime = 1
MG08EyeMarker.PlaceAtMe(MGEyeOpenExplosion as form, 1, false, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
MG08AncanoAlias.GetActorReference().SetGhost(False)
MG08AncanoAlias.GetActorReference().AddToFaction(MGThalmorFaction)

If !(DialogueWinterholdCollege as DialogueWinterholdCollegeQuestScript).EstormoOfferAccepted
    Ancano.SetInvulnerable(false)
    Ancano.SetEssential(false)
    MG08AncanoAlias.GetActorReference().StartCombat(Game.GetPlayer())
    MG08AncanoAlias.GetActorReference().SetAV("Aggression", 3)
    MGThalmorFaction.SetEnemy(CollegeFaction)
    if GetOwningQuest().GetStage() < 30
        GetOwningQuest().SetStage(30)
    endif
Else
	MG08AncanoAllyTalkScene.Start()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ActorBase Property Ancano Auto

Faction Property CollegeFaction Auto

Faction Property MGThalmorFaction Auto

ReferenceAlias Property MG08EyeAlias Auto

ObjectReference Property MG08EyeMarker Auto

Explosion Property MGEyeOpenExplosion Auto

Quest Property DialogueWinterholdCollege Auto

ReferenceAlias Property MG08AncanoAlias Auto

Scene Property MG08ThalmorScene Auto

Scene Property MG08AncanoAllyTalkScene  Auto  
