require 5.000;
use ExtUtils::MakeMaker;
WriteMakefile(
	'NAME'         => 'HTML::TrackerLink',
	'VERSION_FROM' => 'lib/HTML/TrackerLink.pm',
	'PREREQ_PM'    => {
		File::Spec       => 0.83,
		Test::More       => 0,
	},	
	($] >= 5.005) ? (
		'AUTHOR'   => 'Adam Kennedy (cpan@ali.as)',
		'ABSTRACT' => 'Automatically insert links to tracking systems in text',
	) : (),
);
