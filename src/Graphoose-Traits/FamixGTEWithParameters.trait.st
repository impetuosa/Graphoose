Trait {
	#name : #FamixGTEWithParameters,
	#instVars : [
		'#parameters => FMGTEMany type: #FamixGTEParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-Parameter'
}

{ #category : #meta }
FamixGTEWithParameters classSide >> annotation [

	<FMClass: #TWithParameters super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithParameters >> addParameter: aParameter [ 
	parameters add: aParameter
]

{ #category : #accessing }
FamixGTEWithParameters >> numberOfParameters [
	<FMGTEProperty: #numberOfParameters type: #Number>
	<FMComment: 'The number of parameters in a method'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfParameters computedAs: [ self parameters size ]
]

{ #category : #accessing }
FamixGTEWithParameters >> numberOfParameters: aNumber [
	self cacheAt: #numberOfParameters put: aNumber
]

{ #category : #accessing }
FamixGTEWithParameters >> parameters [
	"Relation named: #parameters type: #FamixGTEParameter opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'List of formal parameters declared by this behaviour.'>
	<derived>
	^ parameters
]

{ #category : #accessing }
FamixGTEWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject
]
