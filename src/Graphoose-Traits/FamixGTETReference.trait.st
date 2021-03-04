"
A FAMIXReference entity is created whenever one manipulates a class name as a variable. For example:
(i) if the class is passed as a parameter to a method, or
(ii) if a static method is invoked on a class.

For example, in the following Java code
method a()
{B bObject = new B();  B.aStaticMethod(); }
There is only one reference which is created when the static method aStaticMethod is invoked on class variable B. In the declaration of B objects, the class B is the type of variable b but not a FAMIXReference. And instantiation new B() is an invocation of the default constructor, and not a FAMIXReference.


Note that FAMIXReference was defined between two FAMIXContainerEntity entities. So, it used to represent dependencies between container entities that are computed from the dependencies of contained entities. For example, references between two packages can be computed from dependencies between classes of the packages.
"
Trait {
	#name : #FamixGTETReference,
	#instVars : [
		'#referencer => GTEOne type: #FamixGTETWithReferences opposite: #outgoingReferences',
		'#referredType => GTEOne type: #FamixGTETReferenceable opposite: #incomingReferences'
	],
	#traits : 'FamixGTETAssociation',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETReference classSide >> annotation [

	<FMClass: #TReference super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETReference >> isReference [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETReference >> referencer [
	"Relation named: #referencer type: #FamixGTETWithReferences opposite: #outgoingReferences"

	<generated>
	<FMComment: 'Source entity making the reference. from-side of the association'>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixGTETReference >> referencer: anObject [

	<generated>
	referencer := anObject
]

{ #category : #accessing }
FamixGTETReference >> referredType [
	"Relation named: #referredType type: #FamixGTETReferenceable opposite: #incomingReferences"

	<generated>
	<FMComment: 'Target entity referenced. to-side of the association'>
	<target>
	^ referredType
]

{ #category : #accessing }
FamixGTETReference >> referredType: anObject [

	<generated>
	referredType := anObject
]
