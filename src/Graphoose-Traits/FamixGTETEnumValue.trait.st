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
	#name : #FamixGTETEnumValue,
	#instVars : [
		'#parentEnum => GTEOne type: #FamixGTETWithEnumValues opposite: #enumValues'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETEnumValue classSide >> annotation [

	<FMClass: #TEnumValue super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETEnumValue >> parentEnum [
	"Relation named: #parentEnum type: #FamixGTETWithEnumValues opposite: #enumValues"

	<generated>
	<FMComment: 'The Enum declaring this value. It offers the implementation of belongsTo'>
	<container>
	^ parentEnum
]

{ #category : #accessing }
FamixGTETEnumValue >> parentEnum: anObject [

	<generated>
	parentEnum := anObject
]

{ #category : #navigation }
FamixGTETEnumValue >> parentEnumGroup [
	<generated>
	<navigation: 'ParentEnum'>
	^ MooseSpecializedGroup with: self parentEnum
]
