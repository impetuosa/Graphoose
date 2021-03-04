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
	#name : #FamixGTEInvocation,
	#instVars : [
		'#candidates => FMGTEMany type: #FamixGTEInvocable opposite: #incomingInvocations',
		'#receiver => FMGTEOne type: #FamixGTEInvocationsReceiver opposite: #receivingInvocations',
		'#sender => FMGTEOne type: #FamixGTEWithInvocations opposite: #outgoingInvocations'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-Invocation'
}

{ #category : #meta }
FamixGTEInvocation classSide >> annotation [

	<FMClass: #TInvocation super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEInvocation classSide >> annotationFamixInvocationGroup [
	<generated>
	<mooseGroup>
	^ FamixInvocationGroup
]

{ #category : #adding }
FamixGTEInvocation >> addCandidate: aBehaviouralEntity [ 
	candidates add: aBehaviouralEntity
]

{ #category : #accessing }
FamixGTEInvocation >> anyCandidate [
	^ self candidates ifEmpty: [ nil ] ifNotEmpty: [ self candidates at: 1 ]
]

{ #category : #accessing }
FamixGTEInvocation >> candidates [
	"Relation named: #candidates type: #FamixGTEInvocable opposite: #incomingInvocations"

	<generated>
	<FMComment: 'List of candidate behavioural entities for receiving the invocation'>
	<target>
	^ candidates
]

{ #category : #accessing }
FamixGTEInvocation >> candidates: anObject [

	<generated>
	candidates value: anObject
]

{ #category : #testing }
FamixGTEInvocation >> isInvocation [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEInvocation >> receiver [
	"Relation named: #receiver type: #FamixGTEInvocationsReceiver opposite: #receivingInvocations"

	<generated>
	<FMComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #accessing }
FamixGTEInvocation >> receiver: anObject [

	<generated>
	receiver := anObject
]

{ #category : #accessing }
FamixGTEInvocation >> sender [
	"Relation named: #sender type: #FamixGTEWithInvocations opposite: #outgoingInvocations"

	<generated>
	<FMComment: 'Behavioural entity making the call. from-side of the association'>
	<source>
	^ sender
]

{ #category : #accessing }
FamixGTEInvocation >> sender: anObject [

	<generated>
	sender := anObject
]
