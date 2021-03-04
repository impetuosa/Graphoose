Class {
	#name : #BaselineOfGraphoose,
	#superclass : #BaselineOf,
	#category : #BaselineOfGraphoose
}

{ #category : #baselines }
BaselineOfGraphoose >> baseline: spec [
	<baseline>
	spec
		baseline: #Graphite
		with: [ spec repository: 'github://sbragagnolo/Graphite' ].
	spec package: #Graphoose with: [ spec requires: #Graphite ].
	spec package: #'Graphoose-Traits' with: [ spec requires: #Graphoose ].
	spec
		package: #'Graphoose-CoasterCollector-Generator'
		with: [ spec requires: #Graphoose ].
	spec
		package: #'Graphoose-CoasterCollector-GraphiteModel'
		with: [ spec requires: #Graphoose ].
	spec package: #'Graphoose-Traits' with: [ spec requires: #Graphoose ].
	spec group: #minimum with: #(Graphite 'Graphoose-Traits').
	spec
		group: #default
		with:
			#(Graphite 'Graphoose-Traits' 'Graphoose-CoasterCollector-Generator' 'Graphoose-CoasterCollector-GraphiteModel')
]
