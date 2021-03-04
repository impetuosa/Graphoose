Class {
	#name : #GCCCreator,
	#superclass : #GCCEntity,
	#instVars : [
		'#coasters => FMGTEMany type: #GCCCoaster opposite: #creator',
		'#name => FMGTEProperty'
	],
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Entities'
}

{ #category : #meta }
GCCCreator class >> annotation [

	<FMClass: #Creator super: #GCCEntity>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
	^self
]

{ #category : #adding }
GCCCreator >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
GCCCreator >> coasters [
	"Relation named: #coasters type: #GCCCoaster opposite: #creator"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
GCCCreator >> coasters: anObject [

	<generated>
	coasters value: anObject
]

{ #category : #accessing }
GCCCreator >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GCCCreator >> name: anObject [
	<generated>
	name := anObject
]
