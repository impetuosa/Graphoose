Trait {
	#name : #FamixGTEWithImplicitVariables,
	#instVars : [
		'#implicitVariables => FMGTEMany type: #FamixGTEImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'Graphoose-Traits-ImplicitVariable'
}

{ #category : #meta }
FamixGTEWithImplicitVariables classSide >> annotation [

	<FMClass: #TWithImplicitVariables super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithImplicitVariables >> addImplicitVariable: anImplicitVariable [
	implicitVariables add: anImplicitVariable
]

{ #category : #accessing }
FamixGTEWithImplicitVariables >> implicitVariables [
	"Relation named: #implicitVariables type: #FamixGTEImplicitVariable opposite: #parentBehaviouralEntity"

	<generated>
	<FMComment: 'Implicit variables used locally by this behaviour.'>
	<derived>
	^ implicitVariables
]

{ #category : #accessing }
FamixGTEWithImplicitVariables >> implicitVariables: anObject [

	<generated>
	implicitVariables value: anObject
]
