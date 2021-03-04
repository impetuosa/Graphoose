Trait {
	#name : #FamixGTEWithAnnotationInstances,
	#instVars : [
		'#annotationInstances => FMGTEMany type: #FamixGTEAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'Graphoose-Traits-AnnotationInstance'
}

{ #category : #meta }
FamixGTEWithAnnotationInstances classSide >> annotation [

	<FMClass: #TWithAnnotationInstances super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithAnnotationInstances >> addAnnotationInstance: anAnnotationInstance [
	annotationInstances add: anAnnotationInstance
]

{ #category : #'Famix-Java' }
FamixGTEWithAnnotationInstances >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'Famix-Java' }
FamixGTEWithAnnotationInstances >> annotationInstanceNamed: anAnnotationName [
	^ self 
		annotationInstanceNamed: anAnnotationName 
		ifAbsent: [ ]
]

{ #category : #'Famix-Java' }
FamixGTEWithAnnotationInstances >> annotationInstanceNamed: anAnnotationName ifAbsent: aBlock [
	^ self annotationInstances 
		detect: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
		ifNone: aBlock
]

{ #category : #accessing }
FamixGTEWithAnnotationInstances >> annotationInstances [
	"Relation named: #annotationInstances type: #FamixGTEAnnotationInstance opposite: #annotatedEntity"

	<generated>
	<FMComment: 'This property corresponds to the set of annotations associated to the entity'>
	<derived>
	^ annotationInstances
]

{ #category : #accessing }
FamixGTEWithAnnotationInstances >> annotationInstances: anObject [

	<generated>
	annotationInstances value: anObject
]

{ #category : #accessing }
FamixGTEWithAnnotationInstances >> annotationTypes [
	^ self annotationInstances collectAsSet: [:each | each annotationType ]

]

{ #category : #'Famix-Java' }
FamixGTEWithAnnotationInstances >> isAnnotated [
	^ self annotationInstances isNotEmpty
]

{ #category : #'Famix-Java' }
FamixGTEWithAnnotationInstances >> isAnnotatedWith: anAnnotationName [
	^ self annotationInstances contains: [ :each | each annotationType name asSymbol = anAnnotationName asSymbol ]
]

{ #category : #metrics }
FamixGTEWithAnnotationInstances >> numberOfAnnotationInstances [
	<FMGTEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<FMComment: 'The number of annotation instances defined in the class or in any of its methods'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [
			self annotationInstances size + (self methods inject: 0 into: [:sum :each | sum + each numberOfAnnotationInstances])]
]

{ #category : #metrics }
FamixGTEWithAnnotationInstances >> numberOfAnnotationInstances: aNumber [
	self cacheAt: #numberOfAnnotationInstances put: aNumber
]
