"
I represent a compilation unit file. Typically a .c or .cpp file
"
Trait {
	#name : #FamixGTETCompilationUnit,
	#instVars : [
		'#compilationUnitOwner => GTEOne type: #FamixGTETWithCompilationUnit opposite: #compilationUnit'
	],
	#traits : 'FamixGTETFile',
	#classTraits : 'FamixGTETFile classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETCompilationUnit classSide >> annotation [

	<FMClass: #TCompilationUnit super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETCompilationUnit >> compilationUnitOwner [
	"Relation named: #compilationUnitOwner type: #FamixGTETWithCompilationUnit opposite: #compilationUnit"

	<generated>
	<FMComment: 'The compilation unit that defines this module'>
	^ compilationUnitOwner
]

{ #category : #accessing }
FamixGTETCompilationUnit >> compilationUnitOwner: anObject [

	<generated>
	compilationUnitOwner := anObject
]
