"
FAMIXInvocation represents the invocation of a message (signature) on a receiver by a behavioural entity. 
FAMIXInvocation has:
   (i)  sender: the behavioral entity that sends the message;
   (ii) receiver: the structural entity (variable) that receives the message;
   (iii) candidates: the list of potential behavioral entities that are actually being invoked. This is particularly useful for dynamic languages.

In an invocation, From is the sender of the message and To is the list of candidates. For each invocation in the source code, there is one famix invocation created even if it is from the same behavioral entity towards the same variable and the same message. For example in smalltalk, the following code
anObject aSelector.
will produce one invocation association from current method to a variable anObject with candidate aSelector. The list of candidates will also contain all the methods defining a similar signature as aSelector. 

"
Trait {
	#name : #FamixGTETInvocation,
	#instVars : [
		'#candidates => GTEMany type: #FamixGTETInvocable opposite: #incomingInvocations',
		'#sender => GTEOne type: #FamixGTETWithInvocations opposite: #outgoingInvocations',
		'#receiver => GTEOne type: #FamixGTETInvocationsReceiver opposite: #receivingInvocations'
	],
	#traits : 'FamixGTETAssociation',
	#classTraits : 'FamixGTETAssociation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETInvocation classSide >> annotation [

	<FMClass: #TInvocation super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETInvocation classSide >> annotationFamixGTEInvocationGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEInvocationGroup
]

{ #category : #adding }
FamixGTETInvocation >> addCandidate: anObject [
	<generated>
	^ self candidates add: anObject
]

{ #category : #accessing }
FamixGTETInvocation >> candidates [
	"Relation named: #candidates type: #FamixGTETInvocable opposite: #incomingInvocations"

	<generated>
	<FMComment: 'List of candidate behavioural entities for receiving the invocation'>
	<target>
	^ candidates
]

{ #category : #accessing }
FamixGTETInvocation >> candidates: anObject [

	<generated>
	candidates value: anObject
]

{ #category : #testing }
FamixGTETInvocation >> isInvocation [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETInvocation >> receiver [
	"Relation named: #receiver type: #FamixGTETInvocationsReceiver opposite: #receivingInvocations"

	<generated>
	<FMComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #accessing }
FamixGTETInvocation >> receiver: anObject [

	<generated>
	receiver := anObject
]

{ #category : #accessing }
FamixGTETInvocation >> sender [
	"Relation named: #sender type: #FamixGTETWithInvocations opposite: #outgoingInvocations"

	<generated>
	<FMComment: 'Behavioural entity making the call. from-side of the association'>
	<source>
	^ sender
]

{ #category : #accessing }
FamixGTETInvocation >> sender: anObject [

	<generated>
	sender := anObject
]
