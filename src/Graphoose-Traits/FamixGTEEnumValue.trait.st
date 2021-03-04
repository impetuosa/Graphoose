"
It models the values defined in an FAMIXEnum. These are attributes of enums with default values.

For example, the following Java code defines an Enum with seven EnumValues.

public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, 
    THURSDAY, FRIDAY, SATURDAY 
}

Instance Variables:
	parentEnum	<(MultivalueLink of: FAMIXEnum)>
"
Trait {
	#name : #FamixGTEEnumValue,
	#instVars : [
		'#parentEnum => FMGTEOne type: #FamixGTEWithEnumValues opposite: #enumValues'
	],
	#category : #'Graphoose-Traits-EnumValue'
}

{ #category : #meta }
FamixGTEEnumValue classSide >> annotation [

	<FMClass: #TEnumValue super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEEnumValue >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #accessing }
FamixGTEEnumValue >> mooseNameSeparator [
	^ '::'
]

{ #category : #accessing }
FamixGTEEnumValue >> parentEnum [
	"Relation named: #parentEnum type: #FamixGTEWithEnumValues opposite: #enumValues"

	<generated>
	<FMComment: 'The Enum declaring this value. It offers the implementation of belongsTo'>
	<container>
	^ parentEnum
]

{ #category : #accessing }
FamixGTEEnumValue >> parentEnum: anObject [

	<generated>
	parentEnum := anObject
]

{ #category : #navigation }
FamixGTEEnumValue >> parentEnumGroup [
	<generated>
	<navigation: 'ParentEnum'>
	^ MooseSpecializedGroup with: self parentEnum
]

{ #category : #accessing }
FamixGTEEnumValue >> parentType [ 

	^ self parentEnum
]
