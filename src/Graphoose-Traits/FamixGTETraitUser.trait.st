Trait {
	#name : #FamixGTETraitUser,
	#instVars : [
		'#outgoingTraitUsages => FMGTEMany type: #FamixGTETraitUsage opposite: #user'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETraitUser classSide >> annotation [

	<FMClass: #TTraitUser super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETraitUser >> addOutgoingTraitUsage: anObject [

	outgoingTraitUsages add: anObject

]

{ #category : #accessing }
FamixGTETraitUser >> outgoingTraitUsages [
	"Relation named: #outgoingTraitUsages type: #FamixGTETraitUsage opposite: #user"

	<generated>
	<derived>
	^ outgoingTraitUsages
]

{ #category : #accessing }
FamixGTETraitUser >> outgoingTraitUsages: anObject [

	<generated>
	outgoingTraitUsages value: anObject
]
