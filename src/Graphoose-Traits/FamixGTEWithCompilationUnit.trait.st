Trait {
	#name : #FamixGTEWithCompilationUnit,
	#instVars : [
		'#compilationUnit => FMGTEOne type: #FamixGTECompilationUnit opposite: #compilationUnitOwner'
	],
	#category : #'Graphoose-Traits-CompilationUnit'
}

{ #category : #meta }
FamixGTEWithCompilationUnit classSide >> annotation [

	<FMClass: #TWithCompilationUnit super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithCompilationUnit >> compilationUnit [
	"Relation named: #compilationUnit type: #FamixGTECompilationUnit opposite: #compilationUnitOwner"

	<generated>
	<derived>
	^ compilationUnit
]

{ #category : #accessing }
FamixGTEWithCompilationUnit >> compilationUnit: anObject [

	<generated>
	compilationUnit := anObject
]
