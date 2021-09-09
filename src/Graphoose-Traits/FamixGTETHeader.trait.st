"
I represent a header file. Typically a .h or .hpp
"
Trait {
	#name : #FamixGTETHeader,
	#instVars : [
		'#headerOwner => GTEOne type: #FamixGTETWithHeader opposite: #header'
	],
	#traits : 'FamixGTETFile',
	#classTraits : 'FamixGTETFile classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETHeader classSide >> annotation [

	<FMClass: #THeader super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETHeader >> headerOwner [
	"Relation named: #headerOwner type: #FamixGTETWithHeader opposite: #header"

	<generated>
	^ headerOwner
]

{ #category : #accessing }
FamixGTETHeader >> headerOwner: anObject [

	<generated>
	headerOwner := anObject
]
