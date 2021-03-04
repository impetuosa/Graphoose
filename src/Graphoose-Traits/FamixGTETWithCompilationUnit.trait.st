Trait {
	#name : #FamixGTETWithCompilationUnit,
	#instVars : [
		'#compilationUnit => GTEOne type: #FamixGTETCompilationUnit opposite: #compilationUnitOwner'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithCompilationUnit classSide >> annotation [

	<FMClass: #TWithCompilationUnit super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETWithCompilationUnit >> compilationUnit [
	"Relation named: #compilationUnit type: #FamixGTETCompilationUnit opposite: #compilationUnitOwner"

	<generated>
	<derived>
	^ compilationUnit
]

{ #category : #accessing }
FamixGTETWithCompilationUnit >> compilationUnit: anObject [

	<generated>
	compilationUnit := anObject
]
