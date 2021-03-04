"
FAMIXGlobalVariable represents a global variable in the source code.

"
Trait {
	#name : #FamixGTEGlobalVariable,
	#instVars : [
		'#parentScope => FMGTEOne type: #FamixGTEWithGlobalVariables opposite: #globalVariables'
	],
	#traits : 'FamixGTEStructuralEntity',
	#classTraits : 'FamixGTEStructuralEntity classTrait',
	#category : #'Graphoose-Traits-GlobalVariable'
}

{ #category : #meta }
FamixGTEGlobalVariable classSide >> annotation [

	<FMClass: #TGlobalVariable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEGlobalVariable classSide >> annotationFamixGlobalVariableGroup [
	<generated>
	<mooseGroup>
	^ FamixGlobalVariableGroup
]

{ #category : #accessing }
FamixGTEGlobalVariable >> parentScope [
	"Relation named: #parentScope type: #FamixGTEWithGlobalVariables opposite: #globalVariables"

	<generated>
	<FMComment: 'Scope declaring the global variable. belongsTo implementation'>
	<container>
	^ parentScope
]

{ #category : #accessing }
FamixGTEGlobalVariable >> parentScope: anObject [

	<generated>
	parentScope := anObject
]

{ #category : #navigation }
FamixGTEGlobalVariable >> parentScopeGroup [
	<generated>
	<navigation: 'ParentScope'>
	^ MooseSpecializedGroup with: self parentScope
]
