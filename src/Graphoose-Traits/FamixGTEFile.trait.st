"
It represents a file in the file system.
"
Trait {
	#name : #FamixGTEFile,
	#instVars : [
		'#entities => FMGTEMany type: #FamixGTEWithFiles opposite: #containerFiles'
	],
	#traits : 'FamixGTEFileSystemEntity',
	#classTraits : 'FamixGTEFileSystemEntity classTrait',
	#category : #'Graphoose-Traits-File'
}

{ #category : #meta }
FamixGTEFile classSide >> annotation [

	<FMClass: #TFile super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixGTEFile classSide >> annotationFamixFileGroup [
	<generated>
	<mooseGroup>
	^ FamixFileGroup
]

{ #category : #accessing }
FamixGTEFile >> addEntity: famixEntity [
	self entities add: famixEntity
]

{ #category : #accessing }
FamixGTEFile >> averageNumberOfCharactersPerLine [
	<FMGTEProperty: #averageNumberOfCharactersPerLine type: #Number>
	<FMComment: 'Average number of characters per line of text in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #averageNumberOfCharactersPerLine
		computedAs: [ self numberOfLinesOfText isZero
			ifFalse: [ (self numberOfCharacters / self numberOfLinesOfText) asFloat ]
			ifTrue: [ 0 ] ]
]

{ #category : #accessing }
FamixGTEFile >> entities [
	"Relation named: #entities type: #FamixGTEWithFiles opposite: #containerFiles"

	<generated>
	<FMComment: 'List of entities defined in the file'>
	<derived>
	^ entities
]

{ #category : #accessing }
FamixGTEFile >> entities: anObject [

	<generated>
	entities value: anObject
]

{ #category : #accessing }
FamixGTEFile >> entitiesGroup [
	<navigation: 'Entities'>
	
	^ MooseGroup withAll: self entities withDescription: 'Entities defined in a file'
]

{ #category : #testing }
FamixGTEFile >> exists [
	^ self fileExists 
]

{ #category : #testing }
FamixGTEFile >> fileExists [
	self name ifNil: [ ^ false ].
	^ self fileReference exists
]

{ #category : #testing }
FamixGTEFile >> ifFileExistsDo: aBlock [
	self name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]
]

{ #category : #properties }
FamixGTEFile >> numberOfBytes [
	<FMGTEProperty: #numberOfBytes type: #Number>
	<FMComment: 'Number of bytes in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfBytes
		computedAs: [ self fileExists
				ifTrue: [ self fileReference size ]
				ifFalse: [ 0 ] ]
]

{ #category : #properties }
FamixGTEFile >> numberOfCharacters [
	<FMGTEProperty: #numberOfCharacters type: #Number>
	<FMComment: 'Number of characters in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfCharacters computedAs: [ self sourceText size ]
]

{ #category : #properties }
FamixGTEFile >> numberOfEmptyLinesOfText [
	<FMGTEProperty: #numberOfEmptyLinesOfText type: #Number>
	<FMComment: 'Number of empty lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfEmptyLinesOfText
		computedAs: [ self fileExists
				ifTrue: [ (self sourceText lines select: #isEmpty) size ]
				ifFalse: [ 0 ] ]
]

{ #category : #properties }
FamixGTEFile >> numberOfKiloBytes [
	<FMGTEProperty: #numberOfKiloBytes type: #Number>
	<FMComment: 'Number of kilo bytes in a file.'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfKiloBytes computedAs: [ (self numberOfBytes / 1024) asFloat ]
]

{ #category : #properties }
FamixGTEFile >> readStream [
	^ self fileReference readStream
]

{ #category : #accessing }
FamixGTEFile >> sourceText [
	^ self
		lookUpPropertyNamed: #sourceText
		computedAs: [ self fileExists
				ifTrue: [ self fileReference contents ]
				ifFalse: [ '' ] ]
]

{ #category : #accessing }
FamixGTEFile >> sourceText: aString [
	^ self propertyNamed: #sourceText put: aString
]

{ #category : #properties }
FamixGTEFile >> totalNumberOfLinesOfText [
	<FMGTEProperty: #totalNumberOfLinesOfText type: #Number>
	<FMComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ self sourceText
				ifEmpty: [ (self name isNotNil and: [ self exists ])
						ifTrue: [ (self sourceText select: [ :each | each = Character cr ]) size + 1 ]
						ifFalse: [ 0 ] ]
				ifNotEmpty: [ self sourceText lineCount ] ]
]
