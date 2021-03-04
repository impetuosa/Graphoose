Class {
	#name : #FamixGTEJavaClass,
	#superclass : #FamixGTEJavaType,
	#traits : 'FamixGTETCanBeAbstract + FamixGTETCanBeClassSide + FamixGTETCanBeFinal + FamixGTETClass + FamixGTETHasVisibility + FamixGTETLCOMMetrics + FamixGTETWithExceptions',
	#classTraits : 'FamixGTETCanBeAbstract classTrait + FamixGTETCanBeClassSide classTrait + FamixGTETCanBeFinal classTrait + FamixGTETClass classTrait + FamixGTETHasVisibility classTrait + FamixGTETLCOMMetrics classTrait + FamixGTETWithExceptions classTrait',
	#category : #'Graphoose-Java-Entities-Entities'
}

{ #category : #meta }
FamixGTEJavaClass class >> annotation [

	<FMClass: #Class super: #FamixGTEJavaType>
	<package: #'Graphoose-Java-Entities'>
	<generated>
	^self
]
