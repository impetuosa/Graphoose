"
FAMIXParameter represents one parameter in a method declaration.
"
Trait {
	#name : #FamixGTEParameter,
	#instVars : [
		'#parentBehaviouralEntity => FMGTEOne type: #FamixGTEWithParameters opposite: #parameters'
	],
	#traits : 'FamixGTEStructuralEntity',
	#classTraits : 'FamixGTEStructuralEntity classTrait',
	#category : #'Graphoose-Traits-Parameter'
}

{ #category : #meta }
FamixGTEParameter classSide >> annotation [

	<FMClass: #TParameter super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEParameter >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixGTEWithParameters opposite: #parameters"

	<generated>
	<FMComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixGTEParameter >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject.
	self resetMooseName.

]

{ #category : #navigation }
FamixGTEParameter >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
