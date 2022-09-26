<%@ Control Language="C#" AutoEventWireup="true"  %>
<%--<%@ Register Assembly="nilnul._research_._src_._CTR_" namespace="nilnul.research.src._ctr" tagprefix="cc1" %>--%>
<p>
	实数集合及其上的严格序&lt;构成一个严格全序集。但这个严格全序集没有最大值，也没有最小值。为此，我们人为附加两个元素，一个作为最大值，一个作为最小值，这样实数集合（及其上的严格序）扩展之后，就是一个有最大值、最小值的严格全序集，称为扩展实数集（隐含着扩展的严格全序&lt;）。这里的最大值我们记为&infin;或+&infin;，最小值记为-&infin;。</p>
<p>
	扩展实数集上的&le;可以定义为（摘自nilnul.order，其中的T取为Real）:</p>
	<pre>
		<code>
			
		public bool contains(ExtendedTypeI2<T> a,ExtendedTypeI2<T> b) {
			if (a is NegativeInfinite<T>)
			{
				if (b is extended.Literal<T>)
				{
					return true;
					
				}
				if (b is extended.Infinite<T>)
				{
					return true;
					
				}
				
			}
			else if (a is extended.Literal<T>)
			{
				if (b is extended.Literal<T>)
				{
					return order.contains((a as Literal<T>).literal, (b as Literal<T>).literal);
				}
				if (b is Infinite<T>)
				{
					return true;
					
				}
				
			}
			return false;
 
		
		}		</code></pre></p>
<p>
	这里的&le;满足反对称性和传递性，但既不满足自反性，也不满足反自反性，所以其既不是偏序，也不是严格序。我很想把反对称且传递的关系称为序，但是序被人们认为是偏序的另一个说法。</p>
<p>
	根据上面的&le;我们可以推导出扩展实数集上的&quot;=&quot;关系。但是这时，&infin;&ne;&infin; ,-&infin;&ne;-&infin;。可见=不再满足自反性，仅满足对称性和传递性；其不再是等价关系。<%--<cc1:Book ID="Book1" runat="server" bookId="11" />--%>
</p>
<p>
	扩展的实数集可以记为[-&infin;,&infin;]。我们有时只取其中的[0,&infin;]部分。</p>

