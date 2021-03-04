Trait {
	#name : #FamixGTETWithParameters,
	#instVars : [
		'#parameters => GTEMany type: #FamixGTETParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithParameters classSide >> annotation [

	<FMClass: #TWithParameters super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithParameters >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #accessing }
FamixGTETWithParameters >> parameters [
	"Relation named: #parameters type: #FamixGTETParameter opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'List of formal parameters declared by this behaviour.'>
	<derived>
	^ parameters
]

{ #category : #accessing }
FamixGTETWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject
]
