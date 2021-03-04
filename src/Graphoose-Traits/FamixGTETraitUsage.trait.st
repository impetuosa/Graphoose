Trait {
	#name : #FamixGTETraitUsage,
	#instVars : [
		'#trait => FMGTEOne type: #FamixGTETrait opposite: #incomingTraitUsages',
		'#user => FMGTEOne type: #FamixGTETraitUser opposite: #outgoingTraitUsages'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-Trait'
}

{ #category : #meta }
FamixGTETraitUsage classSide >> annotation [

	<FMClass: #TTraitUsage super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETraitUsage >> trait [
	"Relation named: #trait type: #FamixGTETrait opposite: #incomingTraitUsages"

	<generated>
	<source>
	^ trait
]

{ #category : #accessing }
FamixGTETraitUsage >> trait: anObject [

	<generated>
	trait := anObject
]

{ #category : #accessing }
FamixGTETraitUsage >> user [
	"Relation named: #user type: #FamixGTETraitUser opposite: #outgoingTraitUsages"

	<generated>
	<target>
	^ user
]

{ #category : #accessing }
FamixGTETraitUsage >> user: anObject [

	<generated>
	user := anObject
]
