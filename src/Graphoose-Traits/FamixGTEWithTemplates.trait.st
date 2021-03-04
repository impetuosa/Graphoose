Trait {
	#name : #FamixGTEWithTemplates,
	#instVars : [
		'#templates => FMGTEMany type: #FamixGTETemplate opposite: #templateOwner'
	],
	#category : #'Graphoose-Traits-Template'
}

{ #category : #meta }
FamixGTEWithTemplates classSide >> annotation [

	<FMClass: #TWithTemplates super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithTemplates >> addTemplate: anObject [
	templates add: anObject

]

{ #category : #accessing }
FamixGTEWithTemplates >> templates [
	"Relation named: #templates type: #FamixGTETemplate opposite: #templateOwner"

	<generated>
	<derived>
	^ templates
]

{ #category : #accessing }
FamixGTEWithTemplates >> templates: anObject [

	<generated>
	templates value: anObject
]
