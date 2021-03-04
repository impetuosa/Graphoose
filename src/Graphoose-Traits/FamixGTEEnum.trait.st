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
	#name : #FamixGTEEnum,
	#traits : 'FamixGTEType + FamixGTEWithEnumValues',
	#classTraits : 'FamixGTEType classTrait + FamixGTEWithEnumValues classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEEnum classSide >> annotation [

	<FMClass: #TEnum super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]
