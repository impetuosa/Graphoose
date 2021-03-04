Extension { #name : #FamixMetamodelBuilder }

{ #category : #'*Graphoose' }
FamixMetamodelBuilder >> beGraphiteSlot [
	<ignoreForCoverage>
	self environment: (FmxMBRealRingGraphiteEnvironment for: self).
	self configuration basicModelSuperclassName: #GraphooseModel.
	self configuration basicSuperclassName: #GraphooseEntity
]
