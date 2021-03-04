Class {
	#name : #GCCShape,
	#superclass : #GCCEntity,
	#instVars : [
		'#coasters => FMGTEMany type: #GCCCoaster opposite: #shape'
	],
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Entities'
}

{ #category : #meta }
GCCShape class >> annotation [

	<FMClass: #Shape super: #GCCEntity>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
	^self
]

{ #category : #adding }
GCCShape >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
GCCShape >> coasters [
	"Relation named: #coasters type: #GCCCoaster opposite: #shape"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
GCCShape >> coasters: anObject [

	<generated>
	coasters value: anObject
]
