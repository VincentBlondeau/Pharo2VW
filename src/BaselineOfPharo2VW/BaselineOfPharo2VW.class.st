Class {
	#name : #BaselineOfPharo2VW,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharo2VW
}

{ #category : #baselines }
BaselineOfPharo2VW >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: #Pharo2VW with: [ spec requires: #('XMLWriter') ];
				package: #'Pharo2VW-Tests' with: [ spec requires: #('FAMIX' 'Pharo2VW') ];
				project: 'FAMIX'
					with: [ spec repository: 'http://smalltalkhub.com/mc/Moose/Famix/main'.
					spec loads: #('Resources').
					spec version: #bleedingEdge.
					spec className: 'ConfigurationOfFamix' ];
				project: 'XMLWriter'
					with: [ spec repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main'.
					spec className: 'ConfigurationOfXMLWriter' ].
			spec
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('Pharo2VW');
				group: 'tests' with: #('Pharo2VW-Tests') ]
]
