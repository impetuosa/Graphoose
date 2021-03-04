"
FAMIXSourceAnchor is an abstract class representing a pointer to a source. The source can be identified in multiple ways as specified by the subclasses.  The famix entity that this class is a source pointer for, is accessible via element property.
"
Trait {
	#name : #FamixGTETSourceAnchor,
	#instVars : [
		'#element => GTEOne type: #FamixGTETSourceEntity opposite: #sourceAnchor'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETSourceAnchor classSide >> annotation [

	<FMClass: #TSourceAnchor super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTETSourceAnchor >> element [
	"Relation named: #element type: #FamixGTETSourceEntity opposite: #sourceAnchor"

	<generated>
	<FMComment: 'Enable the accessibility to the famix entity that this class is a source pointer for'>
	^ element
]

{ #category : #accessing }
FamixGTETSourceAnchor >> element: anObject [

	<generated>
	element := anObject
]
