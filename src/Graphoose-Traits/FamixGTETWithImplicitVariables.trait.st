Trait {
	#name : #FamixGTETWithImplicitVariables,
	#instVars : [
		'#implicitVariables => GTEMany type: #FamixGTETImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithImplicitVariables classSide >> annotation [

	<FMClass: #TWithImplicitVariables super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithImplicitVariables >> addImplicitVariable: anObject [
	<generated>
	^ self implicitVariables add: anObject
]

{ #category : #accessing }
FamixGTETWithImplicitVariables >> implicitVariables [
	"Relation named: #implicitVariables type: #FamixGTETImplicitVariable opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'Implicit variables used locally by this behaviour.'>
	<derived>
	^ implicitVariables
]

{ #category : #accessing }
FamixGTETWithImplicitVariables >> implicitVariables: anObject [

	<generated>
	implicitVariables value: anObject
]
