Trait {
	#name : #FamixGTETWithSourceLanguage,
	#instVars : [
		'#declaredSourceLanguage => GTEOne type: #FamixGTETSourceLanguage opposite: #sourcedEntities'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithSourceLanguage classSide >> annotation [

	<FMClass: #TWithSourceLanguage super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETWithSourceLanguage >> declaredSourceLanguage [
	"Relation named: #declaredSourceLanguage type: #FamixGTETSourceLanguage opposite: #sourcedEntities"

	<generated>
	<FMComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #accessing }
FamixGTETWithSourceLanguage >> declaredSourceLanguage: anObject [

	<generated>
	declaredSourceLanguage := anObject
]
