"
I represent a header file. Typically a .h or .hpp
"
Trait {
	#name : #FamixGTEHeader,
	#instVars : [
		'#headerOwner => FMGTEOne type: #FamixGTEWithHeader opposite: #header'
	],
	#traits : 'FamixGTEFile',
	#classTraits : 'FamixGTEFile classTrait',
	#category : #'Graphoose-Traits-Header'
}

{ #category : #meta }
FamixGTEHeader classSide >> annotation [

	<FMClass: #THeader super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEHeader >> headerOwner [
	"Relation named: #headerOwner type: #FamixGTEWithHeader opposite: #header"

	<generated>
	^ headerOwner
]

{ #category : #accessing }
FamixGTEHeader >> headerOwner: anObject [

	<generated>
	headerOwner := anObject
]
