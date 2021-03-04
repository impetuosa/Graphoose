Trait {
	#name : #FamixGTEFileNavigation,
	#instVars : [
		'#endColumn => FMGTEProperty',
		'#endLine => FMGTEProperty',
		'#startColumn => FMGTEProperty',
		'#startLine => FMGTEProperty'
	],
	#traits : 'FamixGTEFileAnchor',
	#classTraits : 'FamixGTEFileAnchor classTrait',
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTEFileNavigation classSide >> annotation [

	<FMClass: #TFileNavigation super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FamixGTEFileNavigation classSide >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	^ self 
		fileName: aString
		startLine: anInteger
		startColumn: anInteger2
		endLine: anInteger3
		endColumn: anInteger4
		model: nil
]

{ #category : #'instance creation' }
FamixGTEFileNavigation classSide >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 model: aMooseModel [
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startLine: anInteger;
		startColumn: anInteger2;
		endLine: anInteger3;
		endColumn: anInteger4;
		yourself
]

{ #category : #accessing }
FamixGTEFileNavigation >> endColumn [

	<FMGTEProperty: #endColumn type: #Number>
	<generated>
	<FMComment: 'Number of the end column'>
	^ endColumn
]

{ #category : #accessing }
FamixGTEFileNavigation >> endColumn: anObject [
	<generated>
	endColumn := anObject
]

{ #category : #accessing }
FamixGTEFileNavigation >> endLine [

	<FMGTEProperty: #endLine type: #Number>
	<generated>
	<FMComment: 'Number of the end line'>
	^ endLine
]

{ #category : #accessing }
FamixGTEFileNavigation >> endLine: anObject [
	<generated>
	endLine := anObject
]

{ #category : #accessing }
FamixGTEFileNavigation >> endPos [
	^ [ self
		lookUpPropertyNamed: #endPos
		computedAs: [ | text |
			((text := self completeText) intervalOfLine: self endLine - 1) last
				+ (self endColumn ifNil: [ (text lines at: self endLine) size	"In case I do not have any endcolumn." ]) ] ]
		on: SubscriptOutOfBounds
		do: [ :err | 0 ]
]

{ #category : #testing }
FamixGTEFileNavigation >> endsBefore: aFileAnchor [
	(self endLine isNil or: [ aFileAnchor endLine isNil ]) ifTrue: [ ^ false ].

	(self endColumn isNil or: [ aFileAnchor endColumn isNil ]) ifTrue: [ ^ self endLine <= aFileAnchor endLine ].

	^ self endLine < aFileAnchor endLine or: [ self endLine = aFileAnchor endLine and: [ self endColumn <= aFileAnchor endColumn ] ]
]

{ #category : #accessing }
FamixGTEFileNavigation >> interval [
	| start end index |
	index := 0.
	start := 1.
	end := 0.
	self completeText
		lineIndicesDo: [ :lineStart :lineEnd :y | 
			index := index + 1.
			self startLine = index ifTrue: [ start := lineStart ].
			self endLine = index ifTrue: [ end := lineEnd ] ].
	^ start to: end
]

{ #category : #testing }
FamixGTEFileNavigation >> isWithin: aFileAnchor [
	"test whether aSourceAnchor is contained within receiver"

	^ self fileName = aFileAnchor fileName and: [ (self startsAfter: aFileAnchor) and: [ self endsBefore: aFileAnchor ] ]
]

{ #category : #accessing }
FamixGTEFileNavigation >> lineCount [
	(endLine isNotNil and: [ startLine isNotNil ]) ifTrue: [ ^ endLine - startLine + 1 ].

	"if no start/end position, use the comple text ..."
	^ self hasSource
		ifTrue: [ self completeText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
]

{ #category : #printing }
FamixGTEFileNavigation >> mooseNameOn: aStream [
	aStream
		nextPutAll: self fileName asString;
		nextPut: $(;
		nextPutAll: self startLine asString;
		nextPut: $@;
		nextPutAll: self startColumn asString;
		nextPut: $-;
		nextPutAll: self endLine asString;
		nextPut: $@;
		nextPutAll: self endColumn asString;
		nextPut: $)
]

{ #category : #accessing }
FamixGTEFileNavigation >> sourceText [
	(self startLine isNil and: [ self endLine isNil ]) ifTrue: [ ^ self completeText ].
	
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | 
			String
				streamContents: [ :s | 
					[ FAMIXFileAnchorReader readStream: ((ZnCharacterReadStream on: (ZnBufferedReadStream on: in) encoding: self encoding)) for: self into: s ]
						on: MessageNotUnderstood
						do: [ self endLine: nil.
							s ] ] ]
]

{ #category : #accessing }
FamixGTEFileNavigation >> startColumn [

	<FMGTEProperty: #startColumn type: #Number>
	<generated>
	<FMComment: 'Number of the start column'>
	^ startColumn
]

{ #category : #accessing }
FamixGTEFileNavigation >> startColumn: anObject [
	<generated>
	startColumn := anObject
]

{ #category : #accessing }
FamixGTEFileNavigation >> startLine [

	<FMGTEProperty: #startLine type: #Number>
	<generated>
	<FMComment: 'Number of the start line'>
	^ startLine
]

{ #category : #accessing }
FamixGTEFileNavigation >> startLine: anObject [
	<generated>
	startLine := anObject
]

{ #category : #accessing }
FamixGTEFileNavigation >> startPos [
	^ self
		lookUpPropertyNamed: #startPos
		computedAs: [ (self completeText
				intervalOfLine:
					(self startLine
						ifNil: [ 1 ]
						ifNotNil: [ :start | start - 1 ])) last + (self startColumn ifNil: [ 0 ]) ]
]

{ #category : #testing }
FamixGTEFileNavigation >> startsAfter: aFileAnchor [
	 ^ aFileAnchor startBeforeFileAnchor: self
]
