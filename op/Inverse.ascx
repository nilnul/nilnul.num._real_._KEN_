<%@ Control Language="C#" AutoEventWireup="true" %>
<p>
	For a real
	<var>a</var>,
	<var>a</var>
	can be represented by
	<var>b</var>+<var>c</var>, where
	<var>b</var>
	is rational,
	b &ne; 0,
	<var>c</var>
	∈ accuracy
	<var>d</var>
	(a bounded rational interval containing 0),
	<var>d</var>.radius=<var>e</var>, where
	<var>e</var>
	is rational &and;
	<var>e</var>&ge;0 &and; <strong>e&lt;|b|</strong>.&nbsp; f=|b|</p>
<p>
	Then the real
	<var>h</var>
	= 1/<var>a</var>
	=<var>i</var>+<var>j</var>=1/<var>b</var>
	+<var>j</var>.
</p>
<p>
	Then j=1/a-1/b =1/(b+c) - 1/b = -c/( b(b+c) ).
</p>
<p>
	To make |j| &isin; Accuracy
	<var>k</var>, where k.radius=m, m is rational, m≥0, we need to have |j|&le;m.
</p>
<p>
	So |j| = |c| / |b(b+c)| &le; m
</p>
<p>
	|c| &le; m |b(b+c)|
</p>
<p>
	because |c| &le; e &lt; |b|, so <strong>|bc|&nbsp;&lt; b<sup>2</sup></strong> </p>
<p>
	&lArr; |c| &le; m b<sup>2</sup> - m |bc|
</p>
<p>
	&#x21d4; |c| (1+m|b|) &le; mb<sup>2</sup>
</p>
<%--<p>
	if m|b| &lt; 1 , then m&lt; 1/|b|</p>--%>
<p>
	&#x21d4; |c| &le; mb<sup>2</sup> / (1+m|b|)
</p>
<p>
	&lArr; <strong>e&le; mb</strong><sup><strong>2</strong></sup><strong>  / (1+m|b|)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1)</strong></p>
<p>
	&hArr;e+emf&le;mb<sup>2</sup></p>
<p>&hArr;e&le;mb<sup>2</sup>-mef</p>
<p> <math>
	<mover>
		<mo>&hArr;</mo>
			<mrow>
			<msup><mi>b</mi><mn>2</mn></msup>
			<mo>&gt;</mo>
			<mi>ef</mi>

			</mrow>
	</mover>
	<mtext>
	m&ge;
		e/(bb-ef)

	</mtext>
    </math> </p>
<p>
	From the above deduction, we know that, deduced reversely upwards, m&gt;= e/ (bb-ef) implies m&gt;= |1/(b+c) - 1/b|. If we take m= e/ (bb-ef) in particular, then e/(bb-ef) &gt;= |1/(b+c) - 1/b|. During the reverse deduction, the &gt;= will not get strict to be a &gt;.</p>
<p>
	Initially, a=p+q, where p is rational, q &isin; Accuracy
	<var>r</var>
	,
	<var>r</var>.radius=<var>s</var>, where s is rational, &and; s&gt;0; &and; s&lt;
	|p|. We let t=|p|</p>
<p>
	we need to check whether&nbsp; <var>s</var> &le; mt<sup>2</sup> / (1+mt). If so, then h=1/p+j, such that |j| &le; m.

</p>
<p>
	If not, we need to compute <var>a</var> further to ensure <var>e</var> smaller.


</p>
<p>
	The computed result is a=u+v, v &isin; Accuracy <var>w</var>, w.radius=x, x&ge;0, x is rational. x &lt; s.</p>
<p>
	Then u+v=p+q &#x21d4; v=p+q-u.</p>
<p>
	To make x≤ mu<sup>2</sup> / (1+m|u|),</p>
<p>
	&lArr; x &le; m(p+q-v)<sup>2</sup> / (1+m|p+q-v|) </p>
<p style="margin-left: 40px">
	Here, note function f(x)=>mx<sup>2</sup> /( 1+mx), we have f&#39;(x)= (2mx+(mx)<sup>2</sup>) / (1+xm)<sup>2</sup> = 1 - 1/(1+mx)<sup>2</sup>. so f'(x) &ge;0, if x&gt;=0</p>
<p style="margin-left: 40px">
	So p+q-v&gt;=0 if p-2|s|&gt;=0</p>
<p style="margin-left: 40px">
	So to shink |p+q-v| to |p| -|q-v| to |p| - (|q|+|v|) to |p| - (|s| + |x|) to |p| - ( |s| +|s| )=|p|-2|s|, we shrink the rightside.</p>
<p>
	&lArr; x &le; m (t-2s)<sup>2</sup> / ( 1+ m(t-2s)),&nbsp;&nbsp;&nbsp;&nbsp; (2)</p>
<p>
	let &xi; =t-2s </p>
<p>
	note here &xi;  have to be non-negative to make abovementioned derivatieve non-negative. that means, s&lt;=t/2.</p>
<p>
	&part; [m&xi;<sup>2</sup>/(1+m&xi;)] / &part;m =[&xi;<sup>2</sup>(1+m&xi;)+m&xi;<sup>3</sup>]/(1+m&xi;)<sup>2</sup> &ge;0, so when <var>m</var> shrinks, the bound for <var>x</var> will shrink. </p>
<p>
	We first must let <var>s</var> be no greater than <var>t</var>/2. Then check the condition (1). If not satisfied, we proceed to let intended accuracy&nbsp; bound be (2), and we are done.</p>






