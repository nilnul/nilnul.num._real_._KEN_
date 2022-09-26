<%@ Control Language="C#" AutoEventWireup="true"  %>
<p>
	How many cauchy sequence are there?</p>
<p>
	A Cauchy sequence is a converging infinite sequence N -&gt; Q.</p>
<p>
	If x[i]=y[i] for every i&isin;N, we say Cauchy sequence x is equal to y</p>
<p> Question1: Then how many Cauchy sequences are there?</p>
<p>Discussion: I think the answer is Beth1. for each item, the possible values are of cardinality N; and we have N items; So the possible value set of the sequence is N*N*N*...= Beth1</p>
<p>Question2: For each real number, how many Cauchy sequences are there that converge to that real number?</p>
<p>Discussion: I think the answer is Beth1. for example for 0, the Cauchy sequence 1/(n+1) (n=0,1,2,3,...) converges to it; and the Cauchy sequence 1/(n+1+a) also converges to it, where Rational a &isin; (1,2); because there are N possible values in a, so we have N possible values for each item in 1/(n+1+a); and the possible value set of the sequence is then N*N*...=Beth1. </p>
<p>But if there are Beth1 Cauchies for each real number, and the cardinality of real number set is Beth1; so the totoal Cauchies for all real numbers are Beth1+<%-- not * --%>Beth1+...=Beth1^2=Beth1. </p>


<%-- the set of sequences of real numbers,  R^N  is Beth1--%>



