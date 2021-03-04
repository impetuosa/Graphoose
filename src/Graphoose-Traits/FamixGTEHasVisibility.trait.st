Trait {
	#name : #FamixGTEHasVisibility,
	#instVars : [
		'#visibility => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTEHasVisibility classSide >> annotation [

	<FMClass: #THasVisibility super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEHasVisibility >> bePackage [

	self visibility: #package
]

{ #category : #accessing }
FamixGTEHasVisibility >> bePrivate [

	self visibility: #private
]

{ #category : #accessing }
FamixGTEHasVisibility >> beProtected [

	self visibility: #protected
]

{ #category : #accessing }
FamixGTEHasVisibility >> bePublic [

	self visibility: #public
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPackage [
	<FMGTEProperty: #isPackage type: #Boolean> <derived>
	<FMComment: 'Flag true for entities that have a package visibility. Language dependent.'>
	
	^ self visibility = #package
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPackage: aBoolean [

	aBoolean ifTrue: [ self visibility: #package ]
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPrivate [
	<FMGTEProperty: #isPrivate type: #Boolean> <derived>
	<FMComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
		^ self visibility = #private
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPrivate: aBoolean [

	aBoolean ifTrue: [ self visibility: #private ]
]

{ #category : #accessing }
FamixGTEHasVisibility >> isProtected [
	<FMGTEProperty: #isProtected type: #Boolean> <derived>
	<FMComment: 'Flag true for protected entities, depending on language semantics.'>
	
	^ self visibility = #protected
]

{ #category : #accessing }
FamixGTEHasVisibility >> isProtected: aBoolean [

	aBoolean ifTrue: [ self visibility: #protected ]
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPublic [
	<FMGTEProperty: #isPublic type: #Boolean> <derived>
	<FMComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self visibility = #public
]

{ #category : #accessing }
FamixGTEHasVisibility >> isPublic: aBoolean [

	aBoolean ifTrue: [ self visibility: #public ]
]

{ #category : #accessing }
FamixGTEHasVisibility >> visibility [

	<FMGTEProperty: #visibility type: #String>
	<generated>
	<FMComment: 'Visibility of the entity'>
	^ visibility
]

{ #category : #accessing }
FamixGTEHasVisibility >> visibility: anObject [
	<generated>
	visibility := anObject
]
