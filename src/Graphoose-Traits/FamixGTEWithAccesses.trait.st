Trait {
	#name : #FamixGTEWithAccesses,
	#instVars : [
		'#accesses => FMGTEMany type: #FamixGTEAccess opposite: #accessor'
	],
	#category : #'Graphoose-Traits-Access'
}

{ #category : #meta }
FamixGTEWithAccesses classSide >> annotation [

	<FMClass: #TWithAccesses super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithAccesses >> accesses [
	"Relation named: #accesses type: #FamixGTEAccess opposite: #accessor"

	<generated>
	<FMComment: 'Accesses to variables made by this behaviour.'>
	<derived>
	^ accesses
]

{ #category : #accessing }
FamixGTEWithAccesses >> accesses: anObject [

	<generated>
	accesses value: anObject
]

{ #category : #adding }
FamixGTEWithAccesses >> addAccess: anAccess [ 
	accesses add: anAccess
]
