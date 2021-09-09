"
FAMIXGlobalVariable represents a global variable in the source code.

"
Trait {
	#name : #FamixGTETGlobalVariable,
	#instVars : [
		'#parentScope => GTEOne type: #FamixGTETWithGlobalVariables opposite: #globalVariables'
	],
	#traits : 'FamixGTETStructuralEntity',
	#classTraits : 'FamixGTETStructuralEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETGlobalVariable classSide >> annotation [

	<FMClass: #TGlobalVariable super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETGlobalVariable classSide >> annotationFamixGTEGlobalVariableGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEGlobalVariableGroup
]

{ #category : #accessing }
FamixGTETGlobalVariable >> parentScope [
	"Relation named: #parentScope type: #FamixGTETWithGlobalVariables opposite: #globalVariables"

	<generated>
	<FMComment: 'Scope declaring the global variable. belongsTo implementation'>
	<container>
	^ parentScope
]

{ #category : #accessing }
FamixGTETGlobalVariable >> parentScope: anObject [

	<generated>
	parentScope := anObject
]

{ #category : #navigation }
FamixGTETGlobalVariable >> parentScopeGroup [
	<generated>
	<navigation: 'ParentScope'>
	^ MooseSpecializedGroup with: self parentScope
]
