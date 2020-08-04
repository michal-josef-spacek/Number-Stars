package Number::Stars;

use strict;
use warnings;

use Class::Utils qw(set_params);

our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

# Convert percent number to stars definition.
sub percent_stars {
	my ($self, $percent) = @_;

	my $stars_hr = {};
	foreach my $star_id (1 .. 10) {
		if ($percent >= $star_id * 10) {

			$stars_hr->{$star_id} = 'full';
		} elsif (($percent >= ($star_id * 10) - 5)
			&& ($percent < $star_id * 10)) {

			$stars_hr->{$star_id} = 'half',
		} else {
			$stars_hr->{$star_id} = 'nothing',
		}
	}

	return $stars_hr;
}
