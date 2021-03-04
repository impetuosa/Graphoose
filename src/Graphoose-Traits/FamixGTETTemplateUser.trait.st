Trait {
	#name : #FamixGTETTemplateUser,
	#instVars : [
		'#template => GTEOne type: #FamixGTETTemplate opposite: #templateUsers'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTemplateUser classSide >> annotation [

	<FMClass: #TTemplateUser super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTemplateUser >> template [
	"Relation named: #template type: #FamixGTETTemplate opposite: #templateUsers"

	<generated>
	^ template
]

{ #category : #accessing }
FamixGTETTemplateUser >> template: anObject [

	<generated>
	template := anObject
]
