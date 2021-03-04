Trait {
	#name : #FamixGTEHasModifiers,
	#instVars : [
		'#modifiers => FMGTEProperty'
	],
	#category : #'Graphoose-Traits-Modifiers'
}

{ #category : #meta }
FamixGTEHasModifiers classSide >> annotation [

	<FMClass: #THasModifiers super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEHasModifiers >> addModifier: aString [
	self modifiers add: aString
]

{ #category : #accessing }
FamixGTEHasModifiers >> bePrivate [
	^ self isPrivate: true
]

{ #category : #accessing }
FamixGTEHasModifiers >> beProtected [

	^ self isProtected: true
]

{ #category : #accessing }
FamixGTEHasModifiers >> bePublic [
	^ self isPublic: true
]

{ #category : #testing }
FamixGTEHasModifiers >> isAbstract [
	<FMGTEProperty: #isAbstract type: #Boolean> <derived>
	<FMComment: 'Flag true for abstract entities. Language dependent.'>
	
	^ self modifiers includes: #abstract
]

{ #category : #accessing }
FamixGTEHasModifiers >> isAbstract: aBoolean [
	^ self modifierSet: aBoolean for: #abstract
]

{ #category : #accessing }
FamixGTEHasModifiers >> isFinal [
	<FMGTEProperty: #isFinal type: #Boolean> <derived>
	<FMComment: 'Flag true for entities defined as being final. Language dependent.'>	

	^ self modifiers includes: #final
]

{ #category : #accessing }
FamixGTEHasModifiers >> isFinal: aBoolean [
	^ self modifierSet: aBoolean for: #final
]

{ #category : #accessing }
FamixGTEHasModifiers >> isPackage: aBoolean [
	^ self modifierSet: aBoolean for: #package
]

{ #category : #accessing }
FamixGTEHasModifiers >> isPrivate: aBoolean [
	^ self modifierSet: aBoolean for: #private
]

{ #category : #accessing }
FamixGTEHasModifiers >> isProtected: aBoolean [

	^ self modifierSet: aBoolean for: #protected
]

{ #category : #accessing }
FamixGTEHasModifiers >> isPublic: aBoolean [
	^ self modifierSet: aBoolean for: #public
]

{ #category : #accessing }
FamixGTEHasModifiers >> modifierSet: aBoolean for: aSymbol [
	^ aBoolean ifTrue: [self addModifier: aSymbol] ifFalse: [self removeModifier: aSymbol]
]

{ #category : #accessing }
FamixGTEHasModifiers >> modifiers [

	<FMGTEProperty: #modifiers type: #String>
	<multivalued>
	<FMComment: 'Generic container for language dependent modifiers.'>
	^ modifiers ifNil: [ modifiers := Set new ]
]

{ #category : #accessing }
FamixGTEHasModifiers >> modifiers: anObject [
	<generated>
	modifiers := anObject
]

{ #category : #accessing }
FamixGTEHasModifiers >> removeModifier: aString [
	self modifiers remove: aString ifAbsent: []
]
