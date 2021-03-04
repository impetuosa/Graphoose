"
FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.
"
Trait {
	#name : #FamixGTETParameterizedType,
	#instVars : [
		'#parameterizableClass => GTEOne type: #FamixGTETWithParameterizedTypes opposite: #parameterizedTypes'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETParameterizedType classSide >> annotation [

	<FMClass: #TParameterizedType super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETParameterizedType >> parameterizableClass [
	"Relation named: #parameterizableClass type: #FamixGTETWithParameterizedTypes opposite: #parameterizedTypes"

	<generated>
	<FMComment: 'Base type of this parameterized type.'>
	^ parameterizableClass
]

{ #category : #accessing }
FamixGTETParameterizedType >> parameterizableClass: anObject [

	<generated>
	parameterizableClass := anObject
]
