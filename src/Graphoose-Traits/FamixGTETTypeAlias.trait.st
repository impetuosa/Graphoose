"
This entity models a typedef in C.

Instance Variables:
	aliasedType	<ProtoObject | PseudoContext>
"
Trait {
	#name : #FamixGTETTypeAlias,
	#instVars : [
		'#aliasedType => GTEOne type: #FamixGTETWithTypeAliases opposite: #typeAliases'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETTypeAlias classSide >> annotation [

	<FMClass: #TTypeAlias super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETTypeAlias >> aliasedType [
	"Relation named: #aliasedType type: #FamixGTETWithTypeAliases opposite: #typeAliases"

	<generated>
	<FMComment: 'Points to the actual type.'>
	^ aliasedType
]

{ #category : #accessing }
FamixGTETTypeAlias >> aliasedType: anObject [

	<generated>
	aliasedType := anObject
]
