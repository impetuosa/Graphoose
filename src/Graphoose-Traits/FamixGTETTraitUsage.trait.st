Trait {
	#name : #FamixGTETTraitUsage,
	#instVars : [
		'#trait => GTEOne type: #FamixGTETTrait opposite: #incomingTraitUsages',
		'#user => GTEOne type: #FamixGTETTraitUser opposite: #outgoingTraitUsages'
	],
	#traits : 'FamixGTETAssociation',
	#classTraits : 'FamixGTETAssociation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTraitUsage classSide >> annotation [

	<FMClass: #TTraitUsage super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTraitUsage >> trait [
	"Relation named: #trait type: #FamixGTETTrait opposite: #incomingTraitUsages"

	<generated>
	<source>
	^ trait
]

{ #category : #accessing }
FamixGTETTraitUsage >> trait: anObject [

	<generated>
	trait := anObject
]

{ #category : #accessing }
FamixGTETTraitUsage >> user [
	"Relation named: #user type: #FamixGTETTraitUser opposite: #outgoingTraitUsages"

	<generated>
	<target>
	^ user
]

{ #category : #accessing }
FamixGTETTraitUsage >> user: anObject [

	<generated>
	user := anObject
]
