"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Trait {
	#name : #FamixGTETDereferencedInvocation,
	#instVars : [
		'#referencer => GTEOne type: #FamixGTETWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#traits : 'FamixGTETInvocation',
	#classTraits : 'FamixGTETInvocation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETDereferencedInvocation classSide >> annotation [

	<FMClass: #TDereferencedInvocation super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETDereferencedInvocation >> referencer [
	"Relation named: #referencer type: #FamixGTETWithDereferencedInvocations opposite: #dereferencedInvocations"

	<generated>
	<FMComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FamixGTETDereferencedInvocation >> referencer: anObject [

	<generated>
	referencer := anObject
]
