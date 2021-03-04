"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Trait {
	#name : #FamixGTEDereferencedInvocation,
	#instVars : [
		'#referencer => FMGTEOne type: #FamixGTEWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#traits : 'FamixGTEInvocation',
	#classTraits : 'FamixGTEInvocation classTrait',
	#category : #'Graphoose-Traits-DereferencedInvocation'
}

{ #category : #meta }
FamixGTEDereferencedInvocation classSide >> annotation [

	<FMClass: #TDereferencedInvocation super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEDereferencedInvocation >> referencer [
	"Relation named: #referencer type: #FamixGTEWithDereferencedInvocations opposite: #dereferencedInvocations"

	<generated>
	<FMComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FamixGTEDereferencedInvocation >> referencer: anObject [

	<generated>
	referencer := anObject
]
