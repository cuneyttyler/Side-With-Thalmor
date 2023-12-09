;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 21
Scriptname QF_MG08_0001F258 Extends Quest Hidden

;BEGIN ALIAS PROPERTY MG08ArnielAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08ArnielAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MGGate
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MGGate Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08TolfdirAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08TolfdirAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08RubbleEnableMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08RubbleEnableMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08QuaranirAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08QuaranirAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08TandilAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08TandilAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08SergiusAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08SergiusAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08AncanoAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08AncanoAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08EyeAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08EyeAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08Faralda
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08Faralda Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08GelebrosAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08GelebrosAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MG08GateAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MG08GateAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
self.SetObjectiveCompleted(10, 1 as Bool)
self.SetObjectiveDisplayed(20, 1 as Bool, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
Quest __temp = self as Quest
mg08questscript kmyQuest = __temp as mg08questscript
self.SetObjectiveCompleted(40, 1 as Bool)
game.GetPlayer().setfactionrank(CollegeFaction, 6)
ArchMageBed.SetFactionOwner(PlayerFaction)
game.GetPlayer().AddPerk(MGArchMageVendorPerk)
game.GetPlayer().AddToFaction(CollegeofWinterholdArchMageFaction)
(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).CollegeUnsafe = false
(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).RegisterforSingleUpdateGameTime((24 * 3) as Float)
Alias_MG08TolfdirAlias.GetActorReference().ModFavorPoints(kmyQuest.FavorRewardLarge.GetValueInt())
MGStaffAlias.Clear()
WinterholdCollegeMapMarkerRef.Enable(false)
game.AddAchievement(14)
game.IncrementStat("Questlines Completed", 1)
if MGRArniel02.GetStage() == 200
	MGRArniel03.Start()
endIf
self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
self.SetObjectiveDisplayed(10, 1 as Bool, false)
Alias_MG08EyeAlias.GetReference().PlayAnimation("Open")
TolfdirApproachScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
self.SetObjectiveCompleted(30, 1 as Bool)
self.SetObjectiveDisplayed(40, 1 as Bool, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
self.SetObjectiveDisplayed(10, 1 as Bool, false)
Alias_MG08EyeAlias.GetReference().PlayAnimation("Open")
TolfdirApproachScene.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
Alias_MG08QuaranirAlias.GetReference().MoveTo(QuaranirStartMarker, 0.000000, 0.000000, 0.000000, true)
Alias_MG08QuaranirAlias.GetReference().Enable(false)
Alias_MG08QuaranirAlias.GetActorReference().SetAlpha(0 as Float, false)
while Alias_MG08QuaranirAlias.GetReference().Is3Dloaded() == false
	utility.Wait(0.100000)
endWhile
MGTeleportInEffect.Play(Alias_MG08QuaranirAlias.GetReference(), 3.60000, none)
Alias_MG08QuaranirAlias.GetActorReference().SetAlpha(1 as Float, true)
self.SetObjectiveCompleted(40, 1 as Bool)
self.SetObjectiveDisplayed(50, 1 as Bool, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
Quest __temp = self as Quest
mg08questscript kmyQuest = __temp as mg08questscript
self.SetObjectiveCompleted(50, 1 as Bool)
Alias_MG08TandilAlias.GetReference().Disable(false)
game.GetPlayer().setfactionrank(CollegeFaction, 6)
ArchMageBed.SetFactionOwner(PlayerFaction)
game.GetPlayer().AddPerk(MGArchMageVendorPerk)
game.GetPlayer().AddToFaction(CollegeofWinterholdArchMageFaction)
(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).CollegeUnsafe = false
(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).RegisterforSingleUpdateGameTime((24 * 3) as Float)
Alias_MG08TolfdirAlias.GetActorReference().ModFavorPoints(kmyQuest.FavorRewardLarge.GetValueInt())
MGStaffAlias.Clear()
WinterholdCollegeMapMarkerRef.Enable(false)
game.AddAchievement(14)
game.IncrementStat("Questlines Completed", 1)
if MGRArniel02.GetStage() == 200
	MGRArniel03.Start()
endIf
self.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
self.SetObjectiveCompleted(20, 1 as Bool)
if !(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).EstormoOfferAccepted
	self.SetObjectiveDisplayed(30, 1 as Bool, false)
else
	self.SetObjectiveDisplayed(35, 1 as Bool, false)
endIf
Alias_MG08AncanoAlias.GetActorReference().AddSpell(AbMG08AncanoMagicka, true)
Alias_MG08AncanoAlias.GetActorReference().MoveTo(MG08AncanoMarker, 0.000000, 0.000000, 0.000000, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
MG08RubbleEnableMarker.GetReference().Enable(false)

Alias_MG08TolfdirAlias.GetReference().MoveTo(MG07TolfdirBridgeMarker, 0.000000, 0.000000, 0.000000, true)
if MG07.GetStage() < 200
	game.GetPlayer().MoveTo(Alias_MG08TolfdirAlias.GetReference(), 0.000000, 0.000000, 0.000000, true)
	SavosAren.Disable(false)
	MirabelleErvine.Disable(false)
	game.GetPlayer().setfactionrank(MGFaction, 4)
	game.GetPlayer().Additem(Staff as form, 1, false)
endIf
if !(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).EstormoOfferAccepted
	self.SetStage(10)
else
	self.SetStage(15)
endIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
self.SetObjectiveCompleted(35, 1 as Bool)
self.SetObjectiveDisplayed(40, 1 as Bool, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
if MG07.GetStage() < 50
    MG01.SetStage(200)
    MG02.SetStage(200)
    MG03.SetStage(200)
    MG04.SetStage(200)
    MG05.SetStage(200)
    MG06.SetStage(200)
    
    Alias_MG08TolfdirAlias.GetReference().MoveTo(MG07TolfdirBridgeMarker, 0.000000, 0.000000, 0.000000, true)
    Alias_MG08TolfdirAlias.GetActorReference().EvaluatePackage()
    game.GetPlayer().MoveTo(MG07TolfdirBridgeMarker, 0.000000, 0.000000, 0.000000, true)
    SavosAren.Disable(false)
    MirabelleErvine.Disable(false)
    game.GetPlayer().setfactionrank(MGFaction, 4)
    game.GetPlayer().Additem(Staff as form, 1, false)
endIf
Alias_MG08AncanoAlias.GetActorReference().EvaluatePackage()
if MG07.GetStage() < 200
    MG07.SetStage(200)
endIf
Ancano.SetInvulnerable(true)
Alias_MG08EyeAlias.GetReference().Enable(false)
if SavosArenRef.isEnabled() == 1 as Bool
     SavosArenRef.Disable(false)
endIf
Alias_MG08GateAlias.GetReference().SetOpen(false)
dialoguewinterholdcollegequestscript DQScript = MGDialogueQuest as dialoguewinterholdcollegequestscript
DQScript.GateOpen = 1
game.GetPlayer().setfactionrank(CollegeFaction, 5)
if !(DialogueWinterholdCollege as dialoguewinterholdcollegequestscript).EstormoOfferAccepted
    self.SetStage(10)
else
    self.SetStage(15)
endIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

objectreference property QuaranirStartMarker auto

objectreference property BarrierCollisionRef auto

faction property MGFaction auto

scene property TolfdirApproachScene auto

faction property CollegeFaction auto

Quest property MGDialogueQuest auto

actorbase property Ancano auto

spell property AbMG08AncanoMagicka auto

objectreference property WinterholdCollegeMapMarkerRef auto

faction property CollegeofWinterholdArchMageFaction auto

objectreference property ArchMageBed auto

perk property MGArchMageVendorPerk auto

visualeffect property MGTeleportInEffect auto

objectreference property MG07TolfdirBridgeMarker auto

faction property ThalmorFaction auto

Quest property MGRArniel03 auto

faction property PlayerFaction auto

Quest property MGRArniel02 auto

Quest property DialogueWinterholdCollege auto

Quest property MG06 auto

Quest property MG02 auto

weapon property Staff auto

Quest property MG07 auto

objectreference property MGEyeCollegeRef auto

faction property MGThalmorFaction auto

Quest property MG05 auto

objectreference property SavosArenRef auto

referencealias property MG08RubbleEnableMarker auto

objectreference property MirabelleErvine auto

Quest property MG01 auto

Quest property MG03 auto

scene property MG08AncanoHallScene auto

referencealias property MGStaffAlias auto

objectreference property SavosAren auto

Quest property MG04 auto

ObjectReference Property MG08AncanoMarker  Auto  
