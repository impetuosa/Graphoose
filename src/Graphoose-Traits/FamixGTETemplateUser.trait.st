Trait {
	#name : #FamixGTETemplateUser,
	#instVars : [
		'#template => FMGTEOne type: #FamixGTETemplate opposite: #templateUsers'
	],
	#category : #'Graphoose-Traits-Template'
}

{ #category : #meta }
FamixGTETemplateUser classSide >> annotation [

	<FMClass: #TTemplateUser super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETemplateUser >> template [
	"Relation named: #template type: #FamixGTETemplate opposite: #templateUsers"

	<generated>
	^ template
]

{ #category : #accessing }
FamixGTETemplateUser >> template: anObject [

	<generated>
	template := anObject
]
