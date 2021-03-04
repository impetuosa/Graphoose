"
FAMIXParameterizedType represents a type with arguments. So, it is an instantiation for the use of FAMIXParameterizableClass. It can appear as a type of an attribute, a type of a local variable, a parameter of a method, a return of a method, etc.
Example:

...
public Map<String,Collection> anAttribute;
...

Where Map<String,Collection> is the FAMIXParameterizedType of anAttribute. String and Collection are arguments. Map is the parameterizableClass.
"
Trait {
	#name : #FamixGTEParameterizedType,
	#instVars : [
		'#parameterizableClass => FMGTEOne type: #FamixGTEWithParameterizedTypes opposite: #parameterizedTypes'
	],
	#category : #'Graphoose-Traits-ParameterizedType'
}

{ #category : #meta }
FamixGTEParameterizedType classSide >> annotation [

	<FMClass: #TParameterizedType super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEParameterizedType >> parameterizableClass [
	"Relation named: #parameterizableClass type: #FamixGTEWithParameterizedTypes opposite: #parameterizedTypes"

	<generated>
	<FMComment: 'Base type of this parameterized type.'>
	^ parameterizableClass
]

{ #category : #accessing }
FamixGTEParameterizedType >> parameterizableClass: anObject [

	parameterizableClass := anObject.
	self resetMooseName.
	

]
