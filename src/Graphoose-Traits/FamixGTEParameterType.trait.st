"
ParameterType represents the symbolic type used in parameterizable classes. This is a FamixGTEype.

Example:
public class AClass<A,B,C> {
...
}

Where AClass is a ParameterizableClass. A, B and C are ParameterType of AClass.
"
Trait {
	#name : #FamixGTEParameterType,
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEParameterType classSide >> annotation [

	<FMClass: #TParameterType super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]
