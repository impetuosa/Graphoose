Trait {
	#name : #FamixGTECohesionCouplingMetrics,
	#traits : 'FamixGTEPackage',
	#classTraits : 'FamixGTEPackage classTrait',
	#category : #'Graphoose-Traits-Package'
}

{ #category : #meta }
FamixGTECohesionCouplingMetrics classSide >> annotation [

	<FMClass: #TCohesionCouplingMetrics super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<FMGTEProperty: #abstractness type: #Number>
	<derived>
	<FMComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self childEntities .
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> afferentCoupling [
	<FMGTEProperty: #afferentCoupling type: #Number>
	<derived>
	<FMComment:
		'Afferent Coupling of a namespace Afferent is the number of classes that depend upon this namespace'>
	^ (((self queryAllIncoming outOfParentUsing: FamixGTEPackage) atScope: FamixGTEType) collect: [ :e | e isClassSide ifTrue: [ e instanceSide ] ifFalse: [ e ] ]) asSet  size
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	<FMGTEProperty: #distance type: #Number>
	<derived>
	<FMComment: 'Distance of a package'>

	
	| abstractness instability |
	abstractness := self abstractness.
	instability := self instability.
	
	(abstractness isNil or: [instability isNil]) ifTrue: [^ nil].
	^ abstractness + instability - 1
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> efferentCoupling [
	"Efferent coupling for a package is the number of classes it depends upon"

	<FMGTEProperty: #efferentCoupling type: #Number>
	<derived>
	<FMComment: 'Efferent Coupling of a package'>

	^ (((self queryAllOutgoing outOfParentUsing: FamixGTEPackage) atScope: FamixGTEType) collect: [ :e | e isClassSide ifTrue: [ e instanceSide ] ifFalse: [ e ] ] ) asSet size
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."

	<FMGTEProperty: #instability type: #Number>
	<derived>
	<FMComment: 'Instability of a package'>

	| efferentCoupling afferentCoupling |
	
	efferentCoupling := self efferentCoupling.
	afferentCoupling := self afferentCoupling.
	(efferentCoupling + afferentCoupling) == 0 ifTrue: [^ nil].
	^ efferentCoupling / (efferentCoupling + afferentCoupling)
]

{ #category : #metrics }
FamixGTECohesionCouplingMetrics >> martinCohesion [
	"Computing cohesion as described by Robert C. Martin"

	<FMGTEProperty: #martinCohesion type: #Number>
	<derived>
	<FMComment: 'Cohesion as defined by Robert C. Martin.'>
	| intraConnectivities myClasses |
	myClasses := self childEntities select: #isClass.
	myClasses := (myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryAllOutgoing atScope: FamixGTEType) withoutSelfLoops withinParentUsing: FamixGTENamespace ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ ((intraConnectivities + 1) / myClasses size) asFloat
]
