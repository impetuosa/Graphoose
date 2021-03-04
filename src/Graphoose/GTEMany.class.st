"
Adaptation of graphite toMany for moose 
"
Class {
	#name : #GTEMany,
	#superclass : #GTEReferenceToMany,
	#instVars : [
		'target',
		'inverseName'
	],
	#category : #'Graphoose-slots'
}

{ #category : #testing }
GTEMany >> isFameSlot [
	^ true
]

{ #category : #testing }
GTEMany >> isToMany [
	^ true
]

{ #category : #testing }
GTEMany >> isToOne [
	^ false
]

{ #category : #testing }
GTEMany >> printOn: aStream [
	aStream
		store: self name;
		nextPutAll: ' => ';
		nextPutAll: self class name.
	aStream
		nextPutAll: ' type: ';
		store: self targetClassName.
	inverseName
		ifNotNil: [ aStream
				nextPutAll: ' opposite: ';
				store: inverseName ]
]

{ #category : #testing }
GTEMany >> targetClass [
	target isSymbol
		ifTrue: [ target := self class environment
				at: target
				ifAbsent: [ self error: 'Cannot find class ' , target printString ] ].
	^ target
]

{ #category : #testing }
GTEMany >> targetClassName [
	^ target isSymbol ifTrue: [ target ] ifFalse: [ target name ]
]

{ #category : #testing }
GTEMany >> type: aTargetClassOrSymbol opposite: anInverseSymbol [
	target := aTargetClassOrSymbol.
	inverseName := anInverseSymbol
]
