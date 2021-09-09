"
It represents a file in the file system.
"
Trait {
	#name : #FamixGTETFile,
	#instVars : [
		'#entities => GTEMany type: #FamixGTETWithFiles opposite: #containerFiles'
	],
	#traits : 'FamixGTETFileSystemEntity',
	#classTraits : 'FamixGTETFileSystemEntity classTrait',
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETFile classSide >> annotation [

	<FMClass: #TFile super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTETFile classSide >> annotationFamixGTEFileGroup [
	<generated>
	<mooseGroup>
	^ FamixGTEFileGroup
]

{ #category : #adding }
FamixGTETFile >> addEntity: anObject [
	<generated>
	^ self entities add: anObject
]

{ #category : #accessing }
FamixGTETFile >> entities [
	"Relation named: #entities type: #FamixGTETWithFiles opposite: #containerFiles"

	<generated>
	<FMComment: 'List of entities defined in the file'>
	<derived>
	^ entities
]

{ #category : #accessing }
FamixGTETFile >> entities: anObject [

	<generated>
	entities value: anObject
]
