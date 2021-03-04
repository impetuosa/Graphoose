Trait {
	#name : #FamixGTETWithTemplates,
	#instVars : [
		'#templates => GTEMany type: #FamixGTETTemplate opposite: #templateOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithTemplates classSide >> annotation [

	<FMClass: #TWithTemplates super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithTemplates >> addTemplate: anObject [
	<generated>
	^ self templates add: anObject
]

{ #category : #accessing }
FamixGTETWithTemplates >> templates [
	"Relation named: #templates type: #FamixGTETTemplate opposite: #templateOwner"

	<generated>
	<derived>
	^ templates
]

{ #category : #accessing }
FamixGTETWithTemplates >> templates: anObject [

	<generated>
	templates value: anObject
]
