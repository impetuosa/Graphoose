Trait {
	#name : #FamixGTETInheritance,
	#instVars : [
		'#subclass => GTEOne type: #FamixGTETWithInheritances opposite: #superInheritances',
		'#superclass => GTEOne type: #FamixGTETWithInheritances opposite: #subInheritances'
	],
	#traits : 'FamixGTETAssociation',
	#classTraits : 'FamixGTETAssociation classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETInheritance classSide >> annotation [

	<FMClass: #TInheritance super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTETInheritance >> isInheritance [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTETInheritance >> subclass [
	"Relation named: #subclass type: #FamixGTETWithInheritances opposite: #superInheritances"

	<generated>
	<FMComment: 'Subclass linked to in this relationship. from-side of the association'>
	<source>
	^ subclass
]

{ #category : #accessing }
FamixGTETInheritance >> subclass: anObject [

	<generated>
	subclass := anObject
]

{ #category : #accessing }
FamixGTETInheritance >> superclass [
	"Relation named: #superclass type: #FamixGTETWithInheritances opposite: #subInheritances"

	<generated>
	<FMComment: 'Superclass linked to in this relationship. to-side of the association'>
	<target>
	^ superclass
]

{ #category : #accessing }
FamixGTETInheritance >> superclass: anObject [

	<generated>
	superclass := anObject
]
