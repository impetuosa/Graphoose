"
Adaptation of graphite toOne for moose 
"
Class {
	#name : #GTEOne,
	#superclass : #GTEReferenceToOne,
	#instVars : [
		'target',
		'inverseName'
	],
	#category : #'Graphoose-slots'
}

{ #category : #testing }
GTEOne >> isFameSlot [
	^ true
]

{ #category : #testing }
GTEOne >> isToMany [
	^ false
]

{ #category : #testing }
GTEOne >> isToOne [
	^ true
]

{ #category : #testing }
GTEOne >> printOn: aStream [
	aStream
		store: self name;
		nextPutAll: ' => ';
		nextPutAll: self class name.
	aStream
		nextPutAll: ' type: ';
		store:  self targetClassName.
	inverseName ifNotNil: [ aStream
				nextPutAll: ' opposite: ';
				store: inverseName ]
]

{ #category : #testing }
GTEOne >> targetClass [
	target isSymbol
		ifTrue: [ target := self class environment
				at: target
				ifAbsent: [ self error: 'Cannot find class ' , target printString ] ].
	^ target
]

{ #category : #testing }
GTEOne >> targetClassName [
	^ target isSymbol ifTrue: [ target ] ifFalse: [ target name ]
]

{ #category : #testing }
GTEOne >> type: aTargetClassOrSymbol opposite: anInverseSymbol [
	target := aTargetClassOrSymbol.
	inverseName := anInverseSymbol
]
