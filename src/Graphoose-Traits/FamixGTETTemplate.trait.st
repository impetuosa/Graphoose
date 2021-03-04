Trait {
	#name : #FamixGTETTemplate,
	#instVars : [
		'#templateOwner => GTEOne type: #FamixGTETWithTemplates opposite: #templates',
		'#templateUsers => GTEMany type: #FamixGTETTemplateUser opposite: #template'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTemplate classSide >> annotation [

	<FMClass: #TTemplate super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETTemplate >> addTemplateUser: anObject [
	<generated>
	^ self templateUsers add: anObject
]

{ #category : #accessing }
FamixGTETTemplate >> templateOwner [
	"Relation named: #templateOwner type: #FamixGTETWithTemplates opposite: #templates"

	<generated>
	^ templateOwner
]

{ #category : #accessing }
FamixGTETTemplate >> templateOwner: anObject [

	<generated>
	templateOwner := anObject
]

{ #category : #accessing }
FamixGTETTemplate >> templateUsers [
	"Relation named: #templateUsers type: #FamixGTETTemplateUser opposite: #template"

	<generated>
	<derived>
	^ templateUsers
]

{ #category : #accessing }
FamixGTETTemplate >> templateUsers: anObject [

	<generated>
	templateUsers value: anObject
]
