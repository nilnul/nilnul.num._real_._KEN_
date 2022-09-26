<%@ Control Language="C#" AutoEventWireup="true" %>
<p>
	1. 如果集合A中的元素都是不相交的集合，则称A是划分。<br />
	2. 如果划分A是B的子集，则称A是对B的部分划分。<br />
	3. 如果A是B的部分划分，且A等于B，则称A是对B的划分。<br />
	4. 如果A={A1,A2}是B的划分（B有全序C），A1中的元素总小于A2的元素，则称{A1,A2}是B上的Cut.<br />
	5. 如果A=｛A1,A2｝是全序集B上的cut，且A1没有最大值，则称A是B上的Dedekind Cut<br />
	<br />
	最后，就简单了——<br />
	6. 如果A=｛A1，A2｝是B的Dedekind Cut, 且A2没有最小值，则A称为Gap.<br />
	<br />
	有理数上：Gap就是无理数；而Dedekind Cut就是实数；Dedekind Cut中，不是Gap的，也即A2有最小值的，就是有理数。</p>
<p>
	那么问题来了，把有理数中的A2区间左边改成开的，就变成无理数；把无理数的A2区间左边改成闭的，就变成有理数。有理数不就一样多了么？<br />
</p>
<p>
	答案：有理数都可以把A2区间改成开的，从而变成无理数。但是，无理数的A2区间有时改不成闭的，比如：{x| x<sup>2</sup>=2}的A2={x|x<sup>2</sup>>2}就改不成。
</p>




