package OWD::Annotation;
use strict;

sub new {
	my ($self, $_classification, $_annotation) = @_;
	return bless {
		'_classification'		=> $_classification,
		'_annotation_data'		=> $_annotation,
	}, $self;
}

sub get_type {
	my ($self) = @_;
	if (!defined $self->{_annotation_data}{type}) {
		die "Tag found without a type";
	}
	return $self->{_annotation_data}{type};
}

sub get_classification {
	my ($self) = @_;
	return $self->{_classification};
}

sub get_coordinates {
	my ($self) = @_;
	return $self->{_annotation_data}{coords};
}

sub DESTROY {
	my ($self) = @_;
	$self->{_classification} = undef;
}

1;