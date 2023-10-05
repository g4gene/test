###############################################
#
#     Various Unit Conversions
#
###############################################

####

# Not complete.  Just add conversion subroutines as needed.

use strict;
use warnings;  



###############################################
#
#  Weight & Mass & Force
#
###############################################

# Converts pounds to newtons
sub lbs2newtons{
	my ($lbs) = @_;
	my $newtons = $lbs * 4.4482216153;
	return $newtons;
}

# Converts newtons to pounds
sub newtons2lbs{
	my ($newtons) = @_;
	return $newtons / 4.4482216153;
}
# - - - - - - - - - - - - - - - - - - - - - - -

# Convert pounds to kilograms
sub lbs2kg{
	my ($lbs) = @_;
	my $kg = $lbs/2.20462262185;
	return $kg;
}

# Convert kilograms to pounds
sub kg2lbs{
	my ($kg) = @_;
	my $lbs= $kg * 2.20462262185;
	return $lbs;
}

###############################################
#
# Velocity
#
###############################################

# Convert knots to meters/seconds
sub knots2ms{
	my ($knots) = @_;
	return ($knots / 1.943844);
}

# Convert meters/seconds to knots
sub ms2knots{
	my ($ms) = @_;
	return ($ms * 1.943844);
}

# - - - - - - - - - - - - - - - - - - - - - - -

# Converts feet per second to knots
sub fps2knots{
	my ($fps) = @_;
	return $fps * 3600 / 6076.12;
}

# Converts knots to feet per second.
sub knots2fps{
	my ($kts)=@_;
	return $kts * 6076.12 /3600;
}
# - - - - - - - - - - - - - - - - - - - - - - -


###############################################
#
# Distance
#
###############################################

# Converts meters to feet
sub m2ft{
	my ($meters) = @_;
	return ($meters / 0.3048);
}

# Converts feet to meters
sub ft2m{
	my ($feet) = @_;
	return ($feet * 0.3048);
}

# Included for backward compatibility
sub feet2meters{return $_[0] * (1200/3937)}  #1200/3937 ratio is US definition of survey foot to meters
sub meters2feet{return $_[0] * (3937/1200)}

# - - - - - - - - - - - - - - - - - - - - - - -

#converts feet into nautical miles.
sub ft2nm{ return $_[0] / 6076.11549; }

#converts nautical miles to feet
sub nm2ft{ return $_[0] * 6076.11549; }



###############################################
#
# Area
#
###############################################

# Converts square feet to square meters
sub sqFeet2sqMeters{
	my ($sqFeet) = @_;
	return $sqFeet * 0.09290303997;
}

# - - - - - - - - - - - - - - - - - - - - - - -

1;

