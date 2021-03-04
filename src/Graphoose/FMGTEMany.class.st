"
Adaptation of graphite toMany for moose 
"
Class {
	#name : #FMGTEMany,
	#superclass : #GTEReferenceToMany,
	#instVars : [
		'target',
		'inverseName'
	],
	#category : #'Graphoose-slots'
}

{ #category : #testing }
FMGTEMany >> isFameSlot [
	^ true
]

{ #category : #testing }
FMGTEMany >> isToMany [
	^ true
]

{ #category : #testing }
FMGTEMany >> isToOne [
	^ false
]

{ #category : #testing }
FMGTEMany >> printOn: aStream [
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
FMGTEMany >> targetClass [
	target isSymbol
		ifTrue: [ target := self class environment
				at: target
				ifAbsent: [ self error: 'Cannot find class ' , target printString ] ].
	^ target
]

{ #category : #testing }
FMGTEMany >> targetClassName [
	^ target isSymbol ifTrue: [ target ] ifFalse: [ target name ]
]

{ #category : #testing }
FMGTEMany >> type: aTargetClassOrSymbol opposite: anInverseSymbol [
	target := aTargetClassOrSymbol.
	inverseName := anInverseSymbol
]
