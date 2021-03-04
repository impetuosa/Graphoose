"
FAMIXParameter represents one parameter in a method declaration.
"
Trait {
	#name : #FamixGTETParameter,
	#instVars : [
		'#parentBehaviouralEntity => GTEOne type: #FamixGTETWithParameters opposite: #parameters'
	],
	#traits : 'FamixGTETStructuralEntity',
	#classTraits : 'FamixGTETStructuralEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETParameter classSide >> annotation [

	<FMClass: #TParameter super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETParameter >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixGTETWithParameters opposite: #parameters"

	<generated>
	<FMComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixGTETParameter >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FamixGTETParameter >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
