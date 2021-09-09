Class {
	#name : #ManifestGraphooseQuery,
	#superclass : #PackageManifest,
	#classVars : [
		'ShouldTuneGCParameters'
	],
	#category : #'Graphoose-Query'
}

{ #category : #initialization }
ManifestGraphooseQuery class >> initialize [
	ShouldTuneGCParameters := true.
	SessionManager default registerUserClassNamed: self name.
	self startUp: true
]

{ #category : #asserting }
ManifestGraphooseQuery class >> shouldBeIncludedByDefaultInMetamodelsWith: aCollectionOfPackages [
	^ true
]

{ #category : #accessing }
ManifestGraphooseQuery class >> shouldTuneGCParameters [
	^ ShouldTuneGCParameters
]

{ #category : #accessing }
ManifestGraphooseQuery class >> shouldTuneGCParameters: anObject [
	ShouldTuneGCParameters := anObject
]

{ #category : #'system startup' }
ManifestGraphooseQuery class >> startUp: isImageStarting [
	(isImageStarting & self shouldTuneGCParameters)
		ifTrue: [
			"Increase the new space size to 64Mo instead of 2.8Mo. This will reduce a lot the number of scavenge"
			Smalltalk vm parameterAt: 45 put: 67108864.

			"Increase growth headroom. When the memory will need to grow, it will directly allocate more room."
			Smalltalk vm parameterAt: 25 put: 33554432.

			"Increase shrinking threashold to shrink the memory less often"
			Smalltalk vm parameterAt: 24 put: 67108864.

			"Change the full GC ratio to only GC when the heap grows by 70% instead of 33% before."
			Smalltalk vm parameterAt: 55 put: 0.7 ]
]
