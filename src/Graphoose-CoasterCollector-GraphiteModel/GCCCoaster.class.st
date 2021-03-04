Class {
	#name : #GCCCoaster,
	#superclass : #GCCEntity,
	#instVars : [
		'#image => FMGTEProperty',
		'#owned => FMGTEProperty',
		'#shape => FMGTEOne type: #GCCShape opposite: #coasters',
		'#country => FMGTEOne type: #GCCCountry opposite: #coasters',
		'#creator => FMGTEOne type: #GCCCreator opposite: #coasters'
	],
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Entities'
}

{ #category : #meta }
GCCCoaster class >> annotation [

	<FMClass: #Coaster super: #GCCEntity>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
	^self
]

{ #category : #accessing }
GCCCoaster >> country [
	"Relation named: #country type: #GCCCountry opposite: #coasters"

	<generated>
	^ country
]

{ #category : #accessing }
GCCCoaster >> country: anObject [

	<generated>
	country := anObject
]

{ #category : #accessing }
GCCCoaster >> creator [
	"Relation named: #creator type: #GCCCreator opposite: #coasters"

	<generated>
	^ creator
]

{ #category : #accessing }
GCCCoaster >> creator: anObject [

	<generated>
	creator := anObject
]

{ #category : #accessing }
GCCCoaster >> image [

	<FMProperty: #image type: #String>
	<generated>
	^ image
]

{ #category : #accessing }
GCCCoaster >> image: anObject [
	<generated>
	image := anObject
]

{ #category : #accessing }
GCCCoaster >> owned [

	<FMProperty: #owned type: #Boolean>
	<generated>
	^ owned
]

{ #category : #accessing }
GCCCoaster >> owned: anObject [
	<generated>
	owned := anObject
]

{ #category : #accessing }
GCCCoaster >> shape [
	"Relation named: #shape type: #GCCShape opposite: #coasters"

	<generated>
	^ shape
]

{ #category : #accessing }
GCCCoaster >> shape: anObject [

	<generated>
	shape := anObject
]
