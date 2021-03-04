Class {
	#name : #GCCCountry,
	#superclass : #GCCEntity,
	#instVars : [
		'#name => FMGTEProperty',
		'#coasters => FMGTEMany type: #GCCCoaster opposite: #country'
	],
	#category : #'Graphoose-CoasterCollector-GraphiteModel-Entities'
}

{ #category : #meta }
GCCCountry class >> annotation [

	<FMClass: #Country super: #GCCEntity>
	<package: #'CoasterCollector-GraphiteModel'>
	<generated>
	^self
]

{ #category : #adding }
GCCCountry >> addCoaster: anObject [
	<generated>
	^ self coasters add: anObject
]

{ #category : #accessing }
GCCCountry >> coasters [
	"Relation named: #coasters type: #GCCCoaster opposite: #country"

	<generated>
	<derived>
	^ coasters
]

{ #category : #accessing }
GCCCountry >> coasters: anObject [

	<generated>
	coasters value: anObject
]

{ #category : #accessing }
GCCCountry >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GCCCountry >> name: anObject [
	<generated>
	name := anObject
]
