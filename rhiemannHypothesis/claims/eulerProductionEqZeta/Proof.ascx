<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._aspCtr" TagPrefix="cc3" %>

<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._aspNetServerCtrl" TagPrefix="cc2" %>

<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._ctr" TagPrefix="cc1" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/InverseOfNToS.ascx" TagPrefix="uc1" TagName="InverseOfNToS" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/MoPlus.ascx" TagPrefix="uc1" TagName="MoPlus" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/ZetaS.ascx" TagPrefix="uc1" TagName="ZetaS" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/MoEllip.ascx" TagPrefix="uc1" TagName="MoEllip" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/Sum.ascx" TagPrefix="uc1" TagName="Sum" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/Product.ascx" TagPrefix="uc1" TagName="Product" %>






<%@ Register assembly="nilnul.math._ml_._CTR4WEB_" namespace="nilnul.mathMl._ctr" tagprefix="cc4" %>






<p>


	<math>

		<mtext>
		&zeta;(s)=<uc1:InverseOfNToS runat="server" n="1" id="InverseOfNToS" />+<uc1:InverseOfNToS runat="server" id="InverseOfNToS1" n="2" />+<uc1:InverseOfNToS runat="server" id="InverseOfNToS2" n="3" />+<uc1:InverseOfNToS runat="server" id="InverseOfNToS3" n="4" />+<uc1:InverseOfNToS runat="server" id="InverseOfNToS4" n="5" />+...
	</mtext>
	</math>

</p>

<p>
	Then,<br />
	<math>
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS5" n="2" />
		<mo>
&zeta;
		</mo>
		<mfenced>
			<mi>s</mi>
		</mfenced>
		<mo>=</mo>
		<uc1:InverseOfNToS runat="server" n="2" ID="InverseOfNToS8" />
		<uc1:MoPlus runat="server" ID="MoPlus" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS19" n="4" />
		<uc1:MoPlus runat="server" ID="MoPlus1" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS29" n="6" />
		<uc1:MoPlus runat="server" ID="MoPlus2" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS39" n="8" />
		<uc1:MoPlus runat="server" ID="MoPlus3" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS49" n="10" />
		<uc1:MoPlus runat="server" ID="MoPlus4" />
		<mo>&hellip;</mo>
	</math>

	<br />
	subtracting the two formula,
	<br />
	<math>

		<mfenced separators="">

			<mn>1</mn>
			<mo>-</mo>
<uc1:InverseOfNToS runat="server" id="InverseOfNToS6" n="2" />

		</mfenced>
		<uc1:ZetaS runat="server" ID="ZetaS" />

		<cc1:MoEq ID="MoEq1" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS7" n="1" />
		<cc1:MoPlus ID="MoPlus5" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS9" n="3" />
		<cc1:MoPlus ID="MoPlus6" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS10" n="5" />
		<cc1:MoPlus ID="MoPlus7" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS11" n="7" />
		<cc1:MoPlus ID="MoPlus8" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS12" n="9" />
		<cc1:MoPlus ID="MoPlus9" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS13" n="11" />
		<cc1:MoPlus ID="MoPlus10" runat="server" />
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS14" n="13" />
		<cc1:MoPlus ID="MoPlus11" runat="server" />
		<uc1:MoEllip runat="server" ID="MoEllip" />

	</math>
	<br />
	multiply this by
	<math>
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS15" n="3" />
	</math>,<br />
	<math>
		<uc1:InverseOfNToS runat="server" ID="InverseOfNToS16" n="3" />
		<mfenced separators="">
			<mn>1</mn>
<cc1:MoMinus ID="MoMinus1" runat=server></cc1:MoMinus>
<uc1:InverseOfNToS runat="server" id="InverseOfNToS17" n="2" />
		</mfenced>
		<uc1:ZetaS runat="server" ID="ZetaS1" />
		<cc1:MoEq ID="MoEq2" runat="server" />
		<uc1:Sum runat="server" ID="Sum" nS="3,9,15,21,27,33" />
	</math>
	<br />
	Subtract from
	<math>
		<uc1:ZetaS runat="server" ID="ZetaS2" />
	</math>
	again,
	<br />
	<math>

		<mfenced separators="">
			<mn>1</mn>
<cc1:MoMinus ID="MoMinus19" runat=server></cc1:MoMinus>
<uc1:InverseOfNToS runat="server" id="InverseOfNToS197" n="3" />

		</mfenced>
		<mfenced separators="">
			<mn>1</mn>
<cc1:MoMinus ID="MoMinus419" runat=server></cc1:MoMinus>
<uc1:InverseOfNToS runat="server" id="Invers4eOfNToS197" n="2" />

		</mfenced>
		<uc1:ZetaS runat="server" ID="ZetaS3" />
		<cc1:MoEq ID="MoEq3" runat="server" />
		<uc1:Sum runat="server" ID="Sum1" nS="1,5,7,11,13,17" />



	</math>
	,<br />
	where all elements having fators of 2,3 are removed.
	<br />
	repeating infinitely,
	<br />
	<math>
		<cc1:MoEllip ID="MoEllip1" runat="server" />
		<cc1:MoInvisibleTimes ID="MoInvisibleTimes1" runat="server" />
		<uc1:Product runat="server" ID="Product" nS="11,7,5,3,2" />
		<uc1:ZetaS runat="server" ID="ZetaS4" />
		<cc1:MoEq ID="MoEq4" runat="server" />
		<cc1:Mn1 ID="Mn1" runat="server" />

	</math>
	<br />
	because the right side approaches 1 as the extra terms get smaller and smaller, if Re(s) &gt; 1.
	<br />
	So 
	<cc1:Math3 ID="Math1" runat="server">
		
		<uc1:ZetaS runat="server" ID="ZetaS5" />
		<cc1:MoEq ID="MoEq5" runat="server" />

		<cc1:Mfrac2 ID="Mfrac1" runat="server">
			<mn>1</mn>
			<mrow>

			<uc1:Product runat="server" ID="Product1" nS="2,3,5,7,11" />
			<cc1:MoInvisibleTimes ID="MoInvisibleTimes2" runat="server" />
			<cc1:MoEllip ID="MoEllip2" runat="server" />			</mrow>

		</cc1:Mfrac2>
		<cc1:MoEq ID="MoEq6" runat="server" />
		<cc1:Mrow ID="Mrow1" runat="server">
			<mrow>

<cc1:Munder_Pi runat="server">
  <munder>
	<mo>&Pi;</mo>
	<mrow>
		<mi>p</mi>
		<mo> :: </mo>
		<mi>Prime</mi>
	</mrow>
  </munder>
 		</cc1:Munder_Pi>

<cc1:Mfrac2 ID="Mfrac2" runat="server">
	<mn>1</mn>
	<mrow>
		
<cc1:Mn1 runat=server></cc1:Mn1>
<cc1:MoMinus runat=server></cc1:MoMinus>
<cc1:Msup2 ID="Msup1" runat="server">
	<mi>
		p
	</mi>
	<mrow>
		<mo>-</mo>
		<mi>s</mi>
	</mrow>
 </cc1:Msup2>
	</mrow>

</cc1:Mfrac2>
</mrow>
		</cc1:Mrow>


	</cc1:Math3>
</p>
