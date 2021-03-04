"
The signature of any behavioural entity
"
Trait {
	#name : #FamixGTEHasSignature,
	#instVars : [
		'#signature => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Behavioral'
}

{ #category : #meta }
FamixGTEHasSignature classSide >> annotation [

	<FMClass: #THasSignature super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEHasSignature >> signature [

	<FMGTEProperty: #signature type: #String>
	<generated>
	<FMComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #accessing }
FamixGTEHasSignature >> signature: anObject [
	<generated>
	signature := anObject
]
