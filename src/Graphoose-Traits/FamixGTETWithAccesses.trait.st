Trait {
	#name : #FamixGTETWithAccesses,
	#instVars : [
		'#accesses => GTEMany type: #FamixGTETAccess opposite: #accessor'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithAccesses classSide >> annotation [

	<FMClass: #TWithAccesses super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETWithAccesses >> accesses [
	"Relation named: #accesses type: #FamixGTETAccess opposite: #accessor"

	<generated>
	<FMComment: 'Accesses to variables made by this behaviour.'>
	<derived>
	^ accesses
]

{ #category : #accessing }
FamixGTETWithAccesses >> accesses: anObject [

	<generated>
	accesses value: anObject
]

{ #category : #adding }
FamixGTETWithAccesses >> addAccess: anObject [
	<generated>
	^ self accesses add: anObject
]
