Trait {
	#name : #FamixGTEMultipleFileAnchor,
	#instVars : [
		'#fileAnchors => FMGTEProperty'
	],
	#traits : 'FamixGTESourceAnchor',
	#classTraits : 'FamixGTESourceAnchor classTrait',
	#category : #'Graphoose-Traits-SourceAnchor'
}

{ #category : #meta }
FamixGTEMultipleFileAnchor classSide >> annotation [

	<FMClass: #TMultipleFileAnchor super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEMultipleFileAnchor >> addFileAnchorWithPath: aPath [
	self fileAnchors
		detect: [ :each | each fileName = aPath ]
		ifNone: [ self createAnchorWithPath: aPath ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> addSourceAnchor: aSourceAnchor [
	self fileAnchors add: aSourceAnchor
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> addToFile: entity [
	^ self fileAnchors do: [ :each | each addToFile: entity ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> allSourceAnchors [
	^ self fileAnchors
]

{ #category : #enumerating }
FamixGTEMultipleFileAnchor >> allSourceAnchorsDo: aBlock [
	^ self allSourceAnchors do: [ :sa | sa allSourceAnchorsDo: aBlock ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> containerFiles [
	^ self
		propertyNamed: #containerFiles
		ifAbsentPut: [ self fileAnchors collect: #correspondingFile thenReject: #isNil ]
]

{ #category : #adding }
FamixGTEMultipleFileAnchor >> createAnchorWithPath: aPath [
	self
		addSourceAnchor:
			(self fileAnchorClass new
				fileName: aPath;
				mooseModel: self mooseModel;
				yourself)
]

{ #category : #adding }
FamixGTEMultipleFileAnchor >> fileAnchorClass [
	^ self mooseModel
		ifNil: [ self error: 'The model need to be set for this feature to work.' ]
		ifNotNil: [ :model | 
			model factory
				entityNamed: #FileAnchor
				ifAbsent: [ self error: 'This metamodel does not includes the full concept of file anchor needed.' ] ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> fileAnchors [
	<FMGTEProperty: #fileAnchors type: #FamixGTEFileAnchor>
	<multivalued>
	<FMComment: 'All source code definition files'>
	^ fileAnchors ifNil: [ fileAnchors := OrderedCollection new ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> fileAnchors: anObject [
	<generated>
	fileAnchors := anObject
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> fileName [
	"for compatibility with FAMIXFileAnchor, guard condition not needed: it has atleast one file anchor"

	^ self fileAnchors anyOne fileName
]

{ #category : #testing }
FamixGTEMultipleFileAnchor >> hasSource [
	^ self fileAnchors anySatisfy: #hasSource
]

{ #category : #testing }
FamixGTEMultipleFileAnchor >> isMultiple [
	^ true
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> lineCount [
	^ self fileAnchors
		ifEmpty: [ self notExistentMetricValue ]
		ifNotEmpty: [ :files | files detectSum: #lineCount ]
]

{ #category : #accessing }
FamixGTEMultipleFileAnchor >> sourceText [
	^ String
		streamContents: [ :s | 
			self fileAnchors
				do: [ :file | 
					s
						<< '=======================';
						<< file fileName;
						<< '====================';
						lf;
						<< file sourceText ] ]
]
