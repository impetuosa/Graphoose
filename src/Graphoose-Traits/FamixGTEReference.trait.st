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
	#name : #FamixGTEReference,
	#instVars : [
		'#referencer => FMGTEOne type: #FamixGTEWithReferences opposite: #outgoingReferences',
		'#referredType => FMGTEOne type: #FamixGTEReferenceable opposite: #incomingReferences'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-Reference'
}

{ #category : #meta }
FamixGTEReference classSide >> annotation [

	<FMClass: #TReference super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTEReference classSide >> source: source target: target [
	^ self new source: source; target: target
]

{ #category : #testing }
FamixGTEReference >> isReference [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEReference >> referencer [
	"Relation named: #referencer type: #FamixGTEWithReferences opposite: #outgoingReferences"

	<generated>
	<FMComment: 'Source entity making the reference. from-side of the association'>
	<source>
	^ referencer
]

{ #category : #accessing }
FamixGTEReference >> referencer: anObject [

	<generated>
	referencer := anObject
]

{ #category : #accessing }
FamixGTEReference >> referredType [
	"Relation named: #referredType type: #FamixGTEReferenceable opposite: #incomingReferences"

	<generated>
	<FMComment: 'Target entity referenced. to-side of the association'>
	<target>
	^ referredType
]

{ #category : #accessing }
FamixGTEReference >> referredType: anObject [

	<generated>
	referredType := anObject
]
