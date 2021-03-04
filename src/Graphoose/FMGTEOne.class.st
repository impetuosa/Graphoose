"
Adaptation of graphite toOne for moose 
"
Class {
	#name : #FMGTEOne,
	#superclass : #GTEReferenceToOne,
	#instVars : [
		'target',
		'inverseName'
	],
	#category : #'Graphoose-slots'
}

{ #category : #testing }
FMGTEOne >> isFameSlot [
	^ true
]

{ #category : #testing }
FMGTEOne >> isToMany [
	^ false
]

{ #category : #testing }
FMGTEOne >> isToOne [
	^ true
]

{ #category : #testing }
FMGTEOne >> printOn: aStream [
	aStream
		store: self name;
		nextPutAll: ' => ';
		nextPutAll: self class name.
	aStream
		nextPutAll: ' type: ';
		store:  self targetClass name.
	inverseName ifNotNil: [ aStream
				nextPutAll: ' opposite: ';
				store: inverseName ]
]

{ #category : #testing }
FMGTEOne >> targetClass [
	target isSymbol
		ifTrue: [ target := self class environment
				at: target
				ifAbsent: [ self error: 'Cannot find class ' , target printString ] ].
	^ target
]

{ #category : #testing }
FMGTEOne >> type: aTargetClassOrSymbol opposite: anInverseSymbol [
	target := aTargetClassOrSymbol.
	inverseName := anInverseSymbol
]
