<%@ Control Language="C#" AutoEventWireup="true"  %>
<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._ctr" TagPrefix="cc1" %>
<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._aspNetServerCtrl" TagPrefix="cc2" %>



<%@ Register assembly="nilnul.math._ml_._CTR4WEB_" namespace="nilnul.mathMl._aspNetServerCtrl" tagprefix="cc3" %>
<%@ Register assembly="nilnul.math._ml_._CTR4WEB_" namespace="nilnul.mathMl._ctr" tagprefix="cc4" %>



<p>
	<a href="http://en.wikipedia.org/wiki/Continued_fraction">http://en.wikipedia.org/wiki/Continued_fraction</a>
</p>
<p>
	for a tail [a<sub>1</sub>,a<sub>2</sub>,...] (where a<sub>i</sub>&gt;0)&nbsp; ∈ [0,1) ,note we don&#39;t allow 1/1, which should be parted as 1 and 0.
</p>
<p>
	&nbsp;define n<sub>k</sub>=a<sub>k</sub>*n<sub>k-1</sub>+n<sub>k-1</sub>, and d<sub>k</sub>=a<sub>k</sub>*d<sub>k-1</sub>+d<sub>k-2</sub>
	(k&gt;0, n<sub>-1</sub>=0,n<sub>-2</sub>=1;d<sub>-1</sub>=1,d<sub>-2</sub>=0)</p>
<p>
	then k-th convergence c<sub>k</sub>=
	<cc1:Math3 ID="Math1" runat="server">
		<cc2:Frac_nullBoxTemplate ID="Frac_nullBoxTemplate1" runat="server">
			<template>
				<mfrac>
			<mrow>
				<msub><mi>n</mi><mi>k</mi></msub>

			</mrow>
			<mrow>
				<cc1:Msub3 runat="server"><mi>d</mi><mn>k</mn></cc1:Msub3>
			</mrow>

		</mfrac>
			</template>
		</cc2:Frac_nullBoxTemplate>

	</cc1:Math3>

</p>
<p>
	for example,tail(1,1,1,1,1,...) stands for the inverse of golden ratio.</p>
<table style="border:1px solid gray">
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>1</td>
		<td>1</td>
		<td>1</td>
		<td>1</td>
		<td>1</td>
	</tr>
	<tr>
		<td>1</td>
		<td>0</td>
		<td>1</td>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>5</td>
	</tr>
	<tr>
		<td>0</td>
		<td>1</td>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>5</td>
		<td>8</td>
	</tr>
	<tr>
		<td>1/0</td>
		<td>0/1</td>
		<td>1</td>
		<td>1/2</td>
		<td>2/3</td>
		<td>3/5</td>
		<td>5/8</td>
	</tr>
</table>
<p>
	We can see from the table, that 1/0=&infin; and 0/1=0. This tells that it's &isin;[0,+&infin;). And each fraction follows oscilating around the true value, with even terms bigger, odd terms smaller, as is the case with 0 and &infin;. And the precision increases.</p>
<p>
	We can see,in the mimimal case, the 5th term will make the approximation in the presion of 1/8.</p>
<p>
	As the progression expands, the minimal case will asymptote to a fibbonaci division progression and the limit is the inverse of golden ratio. The latter denominator is always one term behind the former in the sequence of fibbonaci sequence.</p>
<p>
	So in the limit sense, the presion will increase within the limit of the division of fibbonacci, which is golden ration towards infinity.</p>
<p>
	the precision can be roughtly estimated as 1/F(k) where F(k) is the k-th term of Fibbonacci sequence.</p>
<p>
	1/F(k+1) / 1/F(k)&nbsp;&rarr;&Phi; </p>
<p>
	So the kth fraction can be estimated as &phi;<sup>k</sup></p>
<p>
	This makes the worst case of the estimation to be in the same magnitude of decimal truncation, which makes the loss of estimation approach B<sup>k</sup> where B=10. If the base is 2, then it&#39;s 2.</p>
<p>
	while log<sub>&phi;</sub>
	<cc1:Math3 ID="Math2" runat="server">
		<cc1:Mfrac2 ID="Mfrac1" runat="server">
			<mn>1</mn>
			<mn>10</mn>
		</cc1:Mfrac2>
	</cc1:Math3>
	≈4.78. So generally speaking, to get the same presion of base 10 decimal, 5 times digits should be used in continued fraction.</p>
<p>
	For a presion of 0.01, 10 digits are needed in CF. </p>
<p>
	But this is the worst case. in general same digits in CF will achieve more presion than decimal truncation. After all almost all numbers are irrational. So in almost all cases 5 digits in CF is enough. For example for the worst case of the above example, the presion is 1/8, which is 0.125.</p>
<p>
	&nbsp;</p>

