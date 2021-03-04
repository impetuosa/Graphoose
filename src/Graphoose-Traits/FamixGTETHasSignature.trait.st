"
The signature of any behavioural entity
"
Trait {
	#name : #FamixGTETHasSignature,
	#instVars : [
		'#signature => GTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETHasSignature classSide >> annotation [

	<FMClass: #THasSignature super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETHasSignature >> signature [

	<FMProperty: #signature type: #String>
	<generated>
	<FMComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #accessing }
FamixGTETHasSignature >> signature: anObject [
	<generated>
	signature := anObject
]
