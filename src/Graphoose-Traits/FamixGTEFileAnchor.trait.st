"
This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.
"
Trait {
	#name : #FamixGTEFileAnchor,
	#instVars : [
		'#correspondingFile => FMGTEProperty',
		'#encoding => FMGTEProperty',
		'#fileName => FMGTEProperty'
	],
	#traits : 'FamixGTESourceAnchor',
	#classTraits : 'FamixGTESourceAnchor classTrait',
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTEFileAnchor classSide >> annotation [

	<FMClass: #TFileAnchor super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEFileAnchor >> addToFile: entity [
	^ self correspondingFile addEntity: entity
]

{ #category : #accessing }
FamixGTEFileAnchor >> completeText [
	self sourcesAreReadable ifFalse: [ ^ '' ].

	^ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]
]

{ #category : #accessing }
FamixGTEFileAnchor >> containerFiles [
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]
]

{ #category : #accessing }
FamixGTEFileAnchor >> correspondingFile [

	<FMGTEProperty: #correspondingFile type: #FamixGTEFile>
	<generated>
	<FMComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #accessing }
FamixGTEFileAnchor >> correspondingFile: anObject [
	<generated>
	correspondingFile := anObject
]

{ #category : #decoding }
FamixGTEFileAnchor >> detectEncoding [
	self fileReference ifAbsent: [ ^ nil ].

	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FamixGTEFileAnchor >> encoding [
	<FMGTEProperty: #encoding type: #String>
	<FMComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]

{ #category : #accessing }
FamixGTEFileAnchor >> encoding: anObject [
	<generated>
	encoding := anObject
]

{ #category : #accessing }
FamixGTEFileAnchor >> endLine [
	^ self explicitRequirement
]

{ #category : #accessing }
FamixGTEFileAnchor >> endPos [
	^ self explicitRequirement
]

{ #category : #accessing }
FamixGTEFileAnchor >> fileName [

	<FMGTEProperty: #fileName type: #String>
	<generated>
	<FMComment: 'Name of the source file'>
	^ fileName
]

{ #category : #accessing }
FamixGTEFileAnchor >> fileName: aFileName [
	fileName := aFileName copyReplaceAll: '\' with: '/'. 
]

{ #category : #accessing }
FamixGTEFileAnchor >> fileReference [
	^ self rootFolder asFileReference resolve: self fileName
]

{ #category : #accessing }
FamixGTEFileAnchor >> hasSource [
	^ self sourcesAreReadable
]

{ #category : #testing }
FamixGTEFileAnchor >> isContiguousWith: anotherFileAnchor [
	"compute to see if two entities are contiguous (i.e one followed by the other on consective lines) in a file by looking at their indexed file anchors"

	self fileName = anotherFileAnchor fileName ifFalse: [ ^ false ].

	self endLine + 1 = anotherFileAnchor startLine ifTrue: [ ^ true ].

	^ anotherFileAnchor endLine + 1 = self startLine
]

{ #category : #testing }
FamixGTEFileAnchor >> isFileAnchor [
	^ true
]

{ #category : #accessing }
FamixGTEFileAnchor >> lineCount [
	^ self hasSource
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
]

{ #category : #printing }
FamixGTEFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: (self fileName ifNil: [ 'No associated file' ])
]

{ #category : #private }
FamixGTEFileAnchor >> privateHasEncoding [
	^ encoding isNotNil
]

{ #category : #initialization }
FamixGTEFileAnchor >> rootFolder [
	^ self mooseModel rootFolder
]

{ #category : #testing }
FamixGTEFileAnchor >> sourcesAreReadable [
	^ self fileReference
		ifExists: [ :file | file size > 0 ]
		ifAbsent: [ false ]
]

{ #category : #accessing }
FamixGTEFileAnchor >> startLine [
	^ self explicitRequirement
]

{ #category : #accessing }
FamixGTEFileAnchor >> startPos [
	^ self explicitRequirement
]
