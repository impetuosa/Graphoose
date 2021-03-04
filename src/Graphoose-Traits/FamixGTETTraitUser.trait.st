Trait {
	#name : #FamixGTETTraitUser,
	#instVars : [
		'#outgoingTraitUsages => GTEMany type: #FamixGTETTraitUsage opposite: #user'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTraitUser classSide >> annotation [

	<FMClass: #TTraitUser super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETTraitUser >> addOutgoingTraitUsage: anObject [
	<generated>
	^ self outgoingTraitUsages add: anObject
]

{ #category : #accessing }
FamixGTETTraitUser >> outgoingTraitUsages [
	"Relation named: #outgoingTraitUsages type: #FamixGTETTraitUsage opposite: #user"

	<generated>
	<derived>
	^ outgoingTraitUsages
]

{ #category : #accessing }
FamixGTETTraitUser >> outgoingTraitUsages: anObject [

	<generated>
	outgoingTraitUsages value: anObject
]
