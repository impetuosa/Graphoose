Class {
	#name : #FamixGTEJavaGenerator,
	#superclass : #GTEBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'attribute',
		'caughtException',
		'class',
		'containerEntity',
		'declaredException',
		'enum',
		'enumValue',
		'exception',
		'globalVariable',
		'implicitVariable',
		'inheritance',
		'invocation',
		'localVariable',
		'method',
		'namespace',
		'package',
		'parameter',
		'parameterType',
		'parameterizableClass',
		'primitiveType',
		'reference',
		'thrownException',
		'type',
		'unknownVariable',
		'parameterizedType',
		'file',
		'folder',
		'indexedFileAnchor'
	],
	#category : #'Graphoose-JavaModelGenerator'
}

{ #category : #accessing }
FamixGTEJavaGenerator class >> packageName [

	^ #'Graphoose-Java-Entities'
]

{ #category : #accessing }
FamixGTEJavaGenerator class >> prefix [

	^ #'FamixGTEJava'
]

{ #category : #definition }
FamixGTEJavaGenerator >> defineClasses [
	super defineClasses.

	access := builder newClassNamed: #Access.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	annotationType := builder newClassNamed: #AnnotationType.
	annotationTypeAttribute := builder newClassNamed: #AnnotationTypeAttribute.
	attribute := builder newClassNamed: #Attribute.
	caughtException := builder newClassNamed: #CaughtException.
	class := builder newClassNamed: #Class.
	containerEntity := builder newClassNamed: #ContainerEntity.
	declaredException := builder newClassNamed: #DeclaredException.
	enum := builder newClassNamed: #Enum.
	enumValue := builder newClassNamed: #EnumValue.
	exception := builder newClassNamed: #Exception.
	file := builder newClassNamed: #File.
	folder := builder newClassNamed: #Folder.
	globalVariable := builder newClassNamed: #GlobalVariable.
	implicitVariable := builder newClassNamed: #ImplicitVariable.
	indexedFileAnchor := builder newClassNamed: #IndexedFileAnchor.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	localVariable := builder newClassNamed: #LocalVariable.
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	parameter := builder newClassNamed: #Parameter.
	parameterType := builder newClassNamed: #ParameterType.
	parameterizableClass := builder newClassNamed: #ParameterizableClass.
	parameterizedType := builder newClassNamed: #ParameterizedType.
	primitiveType := builder newClassNamed: #PrimitiveType.
	reference := builder newClassNamed: #Reference.
	thrownException := builder newClassNamed: #ThrownException.
	type := builder newClassNamed: #Type.
	unknownVariable := builder newClassNamed: #UnknownVariable.
	
	primitiveType withTesting.

	self defineComments
]

{ #category : #definition }
FamixGTEJavaGenerator >> defineComments [
	(builder ensureClassNamed: #Entity)
		comment:
			'file :=  ''ArgoUML-0.34.mse'' asFileReference readStream.

dictionary := Dictionary newFrom: (
	FamixJavaEntity withAllSubclasses collect: [ :c | 
		cn := c name withoutPrefix: #FamixJava.
		(''FAMIX.'', cn) -> (''FamixJava-Entities.'', cn) ]).

dictionary at: ''FAMIX.JavaSourceLanguage'' put: ''FamixJava-Entities.SourceLanguage''.

repo := MooseModel importFrom: file withMetamodel: FamixJavaGenerator metamodel translationDictionary: dictionary.

model := MooseModel new.
	model silentlyAddAll: repo elements.
	model entityStorage forRuntime.
model.'
]

{ #category : #definition }
FamixGTEJavaGenerator >> defineHierarchy [
	super defineHierarchy.

	access --|> #TAccess.

	annotationInstance --|> sourcedEntity.
	annotationInstance --|> #TAnnotationInstance.
	annotationInstance --|> #TWithAnnotationInstanceAttributes.
	annotationInstance --|> #TTypedAnnotationInstance.

	annotationInstanceAttribute --|> sourcedEntity.
	annotationInstanceAttribute --|> #TAnnotationInstanceAttribute.
	annotationInstanceAttribute --|> #TTypedAnnotationInstanceAttribute.

	annotationType --|> type.
	annotationType --|> #TAnnotationType.
	annotationType --|> #TWithAttributes.
	annotationType --|> #TWithInheritances.

	annotationTypeAttribute --|> namedEntity.
	annotationTypeAttribute --|> #TAnnotationTypeAttribute.
	annotationTypeAttribute --|> #TTypedAnnotationInstanceAttribute.

	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TWithClassScope.
	attribute --|> #TCanBeFinal.
	attribute --|> #THasVisibility.
	
	file --|> namedEntity.
	file --|> #TFile.
	
	folder --|> namedEntity.
	folder --|> #TFolder.

	indexedFileAnchor --|> sourceAnchor.
	indexedFileAnchor --|> #TIndexedFileNavigation.

	method --|> containerEntity.
	method --|> #TMethod.
	method --|> #TWithThrownExceptions.
	method --|> #TWithDeclaredExceptions.
	method --|> #TWithCaughtExceptions.
	method --|> #TCanBeAbstract.
	method --|> #TCanBeFinal.
	method --|> #THasVisibility.

	caughtException --|> exception.
	caughtException --|> #TCaughtException.

	class --|> type.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TLCOMMetrics.
	class --|> #TCanBeAbstract.
	class --|> #TCanBeFinal.
	class --|> #THasVisibility.
	class --|> #TCanBeClassSide.

	containerEntity --|> namedEntity.
	containerEntity --|> #TWithClasses.
	containerEntity --|> #TWithAnnotationTypes.
	containerEntity --|> #TOODependencyQueries.

	declaredException --|> exception.
	declaredException --|> #TDeclaredException.

	enum --|> type.
	enum --|> #TEnum.
	enum --|> #THasVisibility.
	enum --|> #TWithAttributes.
	enum --|> #TWithMethods.
	enum --|> #TWithInheritances.

	enumValue --|> namedEntity.
	enumValue --|> #TStructuralEntity.
	enumValue --|> #TEnumValue.
	enumValue withPrecedenceOf: #TEnumValue.

	exception --|> #TException.

	globalVariable --|> namedEntity.
	globalVariable --|> #TGlobalVariable.

	implicitVariable --|> namedEntity.
	implicitVariable --|> #TImplicitVariable.

	inheritance --|> #TInheritance.

	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	localVariable --|> namedEntity.
	localVariable --|> #TLocalVariable.
	localVariable --|> #TCanBeFinal.

	namedEntity --|> #TPackageable.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.

	namespace --|> containerEntity.
	namespace --|> #TNamespace.
	namespace --|> #TWithGlobalVariables.

	package --|> containerEntity.
	package --|> #TWithGlobalVariables.
	package --|> #TPackage.

	parameter --|> namedEntity.
	parameter --|> #TParameter.
	parameter --|> #TCanBeFinal.

	parameterType --|> type.
	parameterType --|> #TParameterType.

	parameterizableClass --|> class.
	parameterizableClass --|> #TWithParameterizedTypes.

	parameterizedType --|> type.
	parameterizedType --|> #TParameterizedType.
	parameterizedType --|> #TWithParameterizedTypeUsers.
	parameterizedType --|> #TWithInheritances.

	primitiveType --|> type.
	primitiveType --|> #TPrimitiveType.

	reference --|> #TReference.
	
	sourcedEntity --|> #TWithFiles.

	thrownException --|> exception.
	thrownException --|> #TThrownException.

	type --|> containerEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	type --|> #TParameterizedTypeUser.
	type --|> #TWithMethods.

	unknownVariable --|> namedEntity.
	unknownVariable --|> #TUnknownVariable.
	


]

{ #category : #definition }
FamixGTEJavaGenerator >> defineProperties [
	super defineProperties.
	((namespace property: #parentNamespace)
		comment: 'Parent namespace embedding this namespace, if any.';
		container) *- ((namespace property: #childNamespaces) comment: 'Namespaces embedded in this namespace, if any.')
]

{ #category : #definition }
FamixGTEJavaGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
