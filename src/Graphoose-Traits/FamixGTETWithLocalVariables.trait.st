Trait {
	#name : #FamixGTETWithLocalVariables,
	#instVars : [
		'#localVariables => GTEMany type: #FamixGTETLocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithLocalVariables classSide >> annotation [

	<FMClass: #TWithLocalVariables super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithLocalVariables >> addLocalVariable: anObject [
	<generated>
	^ self localVariables add: anObject
]

{ #category : #accessing }
FamixGTETWithLocalVariables >> localVariables [
	"Relation named: #localVariables type: #FamixGTETLocalVariable opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'Variables locally defined by this behaviour.'>
	<derived>
	^ localVariables
]

{ #category : #accessing }
FamixGTETWithLocalVariables >> localVariables: anObject [

	<generated>
	localVariables value: anObject
]
