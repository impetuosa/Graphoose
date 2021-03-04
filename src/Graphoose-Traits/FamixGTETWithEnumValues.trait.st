Trait {
	#name : #FamixGTETWithEnumValues,
	#instVars : [
		'#enumValues => GTEMany type: #FamixGTETEnumValue opposite: #parentEnum'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithEnumValues classSide >> annotation [

	<FMClass: #TWithEnumValues super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithEnumValues >> addEnumValue: anObject [
	<generated>
	^ self enumValues add: anObject
]

{ #category : #accessing }
FamixGTETWithEnumValues >> enumValues [
	"Relation named: #enumValues type: #FamixGTETEnumValue opposite: #parentEnum"

	<generated>
	<derived>
	^ enumValues
]

{ #category : #accessing }
FamixGTETWithEnumValues >> enumValues: anObject [

	<generated>
	enumValues value: anObject
]
