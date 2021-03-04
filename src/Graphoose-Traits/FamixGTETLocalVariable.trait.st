"
FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.
"
Trait {
	#name : #FamixGTETLocalVariable,
	#instVars : [
		'#parentBehaviouralEntity => GTEOne type: #FamixGTETWithLocalVariables opposite: #localVariables'
	],
	#traits : 'FamixGTETStructuralEntity',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETLocalVariable classSide >> annotation [

	<FMClass: #TLocalVariable super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETLocalVariable >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixGTETWithLocalVariables opposite: #localVariables"

	<generated>
	<FMComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixGTETLocalVariable >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FamixGTETLocalVariable >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
