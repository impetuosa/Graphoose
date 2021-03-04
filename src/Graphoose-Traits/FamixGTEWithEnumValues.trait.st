Trait {
	#name : #FamixGTEWithEnumValues,
	#instVars : [
		'#enumValues => FMGTEMany type: #FamixGTEEnumValue opposite: #parentEnum'
	],
	#category : #'Graphoose-Traits-EnumValue'
}

{ #category : #meta }
FamixGTEWithEnumValues classSide >> annotation [

	<FMClass: #TWithEnumValues super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithEnumValues >> addEnumValue: anObject [
	enumValues add: anObject

]

{ #category : #accessing }
FamixGTEWithEnumValues >> enumValues [
	"Relation named: #enumValues type: #FamixGTEEnumValue opposite: #parentEnum"

	<generated>
	<derived>
	^ enumValues
]

{ #category : #accessing }
FamixGTEWithEnumValues >> enumValues: anObject [

	<generated>
	enumValues value: anObject
]
