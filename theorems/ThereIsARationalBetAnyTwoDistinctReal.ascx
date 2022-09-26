<%@ Control Language="C#" AutoEventWireup="true" %>
<p>
	Suppose that r and s are two real numbers, and without loss of generality, suppose that r is greater than s. It follows that
	<br />
	<br />
	r - s &gt; 0
	<br />
	<br />
	Now, consider the number 1/(r-s) &gt; 0. Because of the &quot;Archimedian property&quot; of the integers, we can find an integer q &gt; 1/(r - s). It follows that
	<br />
	<br />
	q*(r - s) &gt; (r-s)/(r-s) = 1
	<br />
	or, rearranging, we have
	<br />
	qr &gt; qs + 1
	<br />
	<br />
	Because the integers are each 1 apart, we can guarantee that there is some integer p such that
	<br />
	<br />
	qr &gt; p &gt; qs
	<br />
	<br />
	Divide everything by q, and we have
	<br />
	<br />
	r &gt; p/q &gt; s
	<br />
	<br />
	That is, we have proven that there exists a rational number, p/q, between r and s. QED.
</p>




