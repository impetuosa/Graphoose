Trait {
	#name : #FamixGTETemplate,
	#instVars : [
		'#templateOwner => FMGTEOne type: #FamixGTEWithTemplates opposite: #templates',
		'#templateUsers => FMGTEMany type: #FamixGTETemplateUser opposite: #template'
	],
	#category : #'Graphoose-Traits-Template'
}

{ #category : #meta }
FamixGTETemplate classSide >> annotation [

	<FMClass: #TTemplate super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETemplate >> addTemplateUser: anObject [

	templateUsers add: anObject

]

{ #category : #accessing }
FamixGTETemplate >> templateOwner [
	"Relation named: #templateOwner type: #FamixGTEWithTemplates opposite: #templates"

	<generated>
	^ templateOwner
]

{ #category : #accessing }
FamixGTETemplate >> templateOwner: anObject [

	<generated>
	templateOwner := anObject
]

{ #category : #accessing }
FamixGTETemplate >> templateUsers [
	"Relation named: #templateUsers type: #FamixGTETemplateUser opposite: #template"

	<generated>
	<derived>
	^ templateUsers
]

{ #category : #accessing }
FamixGTETemplate >> templateUsers: anObject [

	<generated>
	templateUsers value: anObject
]
