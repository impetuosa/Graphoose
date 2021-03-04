"
This models an enum.

For example, the following Java code defines an Enum with seven EnumValues.

public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, 
    THURSDAY, FRIDAY, SATURDAY 
}

Instance Variables:
	values	<(MultivalueLink of: FAMIXEnumValue)>
"
Trait {
	#name : #FamixGTETEnum,
	#traits : 'FamixGTETType + FamixGTETWithEnumValues',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETEnum classSide >> annotation [

	<FMClass: #TEnum super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]
