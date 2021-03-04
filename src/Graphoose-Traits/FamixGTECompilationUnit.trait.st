"
I represent a compilation unit file. Typically a .c or .cpp file
"
Trait {
	#name : #FamixGTECompilationUnit,
	#instVars : [
		'#compilationUnitOwner => FMGTEOne type: #FamixGTEWithCompilationUnit opposite: #compilationUnit'
	],
	#traits : 'FamixGTEFile',
	#classTraits : 'FamixGTEFile classTrait',
	#category : #'Graphoose-Traits-CompilationUnit'
}

{ #category : #meta }
FamixGTECompilationUnit classSide >> annotation [

	<FMClass: #TCompilationUnit super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTECompilationUnit >> compilationUnitOwner [
	"Relation named: #compilationUnitOwner type: #FamixGTEWithCompilationUnit opposite: #compilationUnit"

	<generated>
	<FMComment: 'The compilation unit that defines this module'>
	^ compilationUnitOwner
]

{ #category : #accessing }
FamixGTECompilationUnit >> compilationUnitOwner: anObject [

	<generated>
	compilationUnitOwner := anObject
]
