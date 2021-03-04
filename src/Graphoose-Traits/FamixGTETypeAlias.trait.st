"
This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>
"
Trait {
	#name : #FamixGTETypeAlias,
	#instVars : [
		'#aliasedType => FMGTEOne type: #FamixGTEWithTypeAliases opposite: #typeAliases'
	],
	#category : #'Graphoose-Traits-TypeAlias'
}

{ #category : #meta }
FamixGTETypeAlias classSide >> annotation [

	<FMClass: #TTypeAlias super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETypeAlias >> aliasedType [
	"Relation named: #aliasedType type: #FamixGTEWithTypeAliases opposite: #typeAliases"

	<generated>
	<FMComment: 'Points to the actual type.'>
	^ aliasedType
]

{ #category : #accessing }
FamixGTETypeAlias >> aliasedType: anObject [

	<generated>
	aliasedType := anObject
]
