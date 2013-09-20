
	function f(s1, s2, s3, s4)
	{
		return s2+s4+'@'+s1+s3;
	}

	$(document).ready(function()
	{
		var mail = f('yand', 'pimanov-vla', 'ex.ru', 'dimir');
		$("#contact").html(mail);
	});
