"
FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.
"
Trait {
	#name : #FamixGTELocalVariable,
	#instVars : [
		'#parentBehaviouralEntity => FMGTEOne type: #FamixGTEWithLocalVariables opposite: #localVariables'
	],
	#traits : 'FamixGTEStructuralEntity',
	#classTraits : 'FamixGTEStructuralEntity classTrait',
	#category : #'Graphoose-Traits-LocalVariable'
}

{ #category : #meta }
FamixGTELocalVariable classSide >> annotation [

	<FMClass: #TLocalVariable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTELocalVariable >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixGTEWithLocalVariables opposite: #localVariables"

	<generated>
	<FMComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixGTELocalVariable >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject.
	self resetMooseName.
	

]

{ #category : #navigation }
FamixGTELocalVariable >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
