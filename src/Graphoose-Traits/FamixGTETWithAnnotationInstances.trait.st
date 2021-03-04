Trait {
	#name : #FamixGTETWithAnnotationInstances,
	#instVars : [
		'#annotationInstances => GTEMany type: #FamixGTETAnnotationInstance opposite: #annotatedEntity'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithAnnotationInstances classSide >> annotation [

	<FMClass: #TWithAnnotationInstances super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithAnnotationInstances >> addAnnotationInstance: anObject [
	<generated>
	^ self annotationInstances add: anObject
]

{ #category : #accessing }
FamixGTETWithAnnotationInstances >> annotationInstances [
	"Relation named: #annotationInstances type: #FamixGTETAnnotationInstance opposite: #annotatedEntity"

	<generated>
	<FMComment: 'This property corresponds to the set of annotations associated to the entity'>
	<derived>
	^ annotationInstances
]

{ #category : #accessing }
FamixGTETWithAnnotationInstances >> annotationInstances: anObject [

	<generated>
	annotationInstances value: anObject
]
