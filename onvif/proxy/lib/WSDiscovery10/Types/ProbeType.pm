package WSDiscovery10::Types::ProbeType;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(0);

sub get_xmlns { 'http://schemas.xmlsoap.org/ws/2005/04/discovery' };

our $XML_ATTRIBUTE_CLASS = 'WSDiscovery10::Types::ProbeType::_ProbeType::XmlAttr';

#our $XML_ATTRIBUTE_CLASS;
#undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Types_of :ATTR(:get<Types>);
my %Scopes_of :ATTR(:get<Scopes>);

__PACKAGE__->_factory(
    [ qw(        Types
        Scopes

    ) ],
    {
        'Types' => \%Types_of,
        'Scopes' => \%Scopes_of,
    },
    {
        'Types' => 'WSDiscovery10::Elements::Types',

        'Scopes' => 'WSDiscovery10::Elements::Scopes',

    },
    {

        'Types' => '',
        'Scopes' => '',
    }
);

} # end BLOCK


package WSDiscovery10::Types::ProbeType::_ProbeType::XmlAttr;
#use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);
use Class::Std::Fast::Storable constructor => 'none', cache => 1;
use base qw(SOAP::WSDL::XSD::Typelib::Builtin::anySimpleType);


{ # BLOCK to scope variables

my %Attribs_of :ATTR(:get<Attribs>);

sub new
{
  my $self = pop @{ Class::Std::Fast::OBJECT_CACHE_REF()->{ $_[0] } };
  $self = bless \(my $o = Class::Std::Fast::ID()), $_[0]
        if not defined $self;
        
  $self->BUILD(${$self}, $_[1]);

  return $self;      
}

sub BUILD 
{
  my ($self, $ident, $arg_ref) = @_;

  $Attribs_of{$ident} = $arg_ref;
}

# without this no attributes are serialized
# SOAP::WSDL::XSD::Typelib::CompexType sub serialize_attr()

sub as_bool :BOOLIFY { 1 }

sub serialize() 
{
  my $ident = ${ $_[0] };
  my $option_ref = $_[1];
  my $attr_str = "";

  foreach my $attr (keys %{$Attribs_of{$ident}})
  {
    my $value = %{$Attribs_of{$ident}}{$attr};
    $attr_str .= " $attr=\"$value\"";
  }
  
  return $attr_str;
}

} # end BLOCK

1;


=pod

=head1 NAME

WSDiscovery10::Types::ProbeType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ProbeType from the namespace http://schemas.xmlsoap.org/ws/2005/04/discovery.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Types

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 


=item * Scopes

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # WSDiscovery10::Types::ProbeType
   Types => $some_value, # QNameListType
   Scopes =>  { value => $some_value },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

