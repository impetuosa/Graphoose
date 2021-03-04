Trait {
	#name : #FamixGTEInheritance,
	#instVars : [
		'#subclass => FMGTEOne type: #FamixGTEWithInheritances opposite: #superInheritances',
		'#superclass => FMGTEOne type: #FamixGTEWithInheritances opposite: #subInheritances'
	],
	#traits : 'FamixGTEAssociation',
	#classTraits : 'FamixGTEAssociation classTrait',
	#category : #'Graphoose-Traits-Inheritance'
}

{ #category : #meta }
FamixGTEInheritance classSide >> annotation [

	<FMClass: #TInheritance super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #testing }
FamixGTEInheritance >> isInheritance [

	<generated>
	^ true
]

{ #category : #accessing }
FamixGTEInheritance >> subclass [
	"Relation named: #subclass type: #FamixGTEWithInheritances opposite: #superInheritances"

	<generated>
	<FMComment: 'Subclass linked to in this relationship. from-side of the association'>
	<source>
	^ subclass
]

{ #category : #accessing }
FamixGTEInheritance >> subclass: anObject [

	<generated>
	subclass := anObject
]

{ #category : #accessing }
FamixGTEInheritance >> superclass [
	"Relation named: #superclass type: #FamixGTEWithInheritances opposite: #subInheritances"

	<generated>
	<FMComment: 'Superclass linked to in this relationship. to-side of the association'>
	<target>
	^ superclass
]

{ #category : #accessing }
FamixGTEInheritance >> superclass: anObject [

	<generated>
	superclass := anObject
]
