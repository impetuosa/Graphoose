"
FAMIXImplicitVariable represents a variable defined by the compiler in a context, such as self, super, thisContext.
"
Trait {
	#name : #FamixGTEImplicitVariable,
	#instVars : [
		'#parentBehaviouralEntity => FMGTEOne type: #FamixGTEWithImplicitVariables opposite: #implicitVariables'
	],
	#traits : 'FamixGTEStructuralEntity',
	#classTraits : 'FamixGTEStructuralEntity classTrait',
	#category : #'Graphoose-Traits-ImplicitVariable'
}

{ #category : #meta }
FamixGTEImplicitVariable classSide >> annotation [

	<FMClass: #TImplicitVariable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEImplicitVariable >> isImplicitVariable [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEImplicitVariable >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixGTEWithImplicitVariables opposite: #implicitVariables"

	<generated>
	<FMComment: 'The behaviour containing this implicit variable. belongsTo implementation'>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixGTEImplicitVariable >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject.
	self resetMooseName.
	

]

{ #category : #navigation }
FamixGTEImplicitVariable >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
