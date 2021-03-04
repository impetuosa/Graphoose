Trait {
	#name : #FamixGTEWithLocalVariables,
	#instVars : [
		'#localVariables => FMGTEMany type: #FamixGTELocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-LocalVariable'
}

{ #category : #meta }
FamixGTEWithLocalVariables classSide >> annotation [

	<FMClass: #TWithLocalVariables super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithLocalVariables >> addLocalVariable: aLocalVariable [
	localVariables add: aLocalVariable
]

{ #category : #accessing }
FamixGTEWithLocalVariables >> localVariables [
	"Relation named: #localVariables type: #FamixGTELocalVariable opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'Variables locally defined by this behaviour.'>
	<derived>
	^ localVariables
]

{ #category : #accessing }
FamixGTEWithLocalVariables >> localVariables: anObject [

	<generated>
	localVariables value: anObject
]
