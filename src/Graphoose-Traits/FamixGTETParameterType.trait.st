"
ParameterType represents the symbolic type used in parameterizable classes. This is a FAMIXType.

Example:
public class AClass<A,B,C> {
...
}

Where AClass is a ParameterizableClass. A, B and C are ParameterType of AClass.
"
Trait {
	#name : #FamixGTETParameterType,
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETParameterType classSide >> annotation [

	<FMClass: #TParameterType super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]
