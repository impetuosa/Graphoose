Extension { #name : #FamixMetamodelBuilder }

{ #category : #'*Graphoose' }
FamixMetamodelBuilder >> beGraphiteSlot [
	<ignoreForCoverage>
	self environment: (FmxMBRealRingGraphiteEnvironment for: self)
]
