<%@ Control Language="C#" AutoEventWireup="true"  %>

 
		<h1>R=N&rarr;B </h1>
<p>即每一个实数都可以写为整数和[0,1)间的小数的和。而[0,1)间的小数可以写为这样一个函数：</p>
<p>对任意给定的自然数n，给出二进制表达的前n位。</p>
<p>比如：&#x221a;2的小数部分就可以表示为这样的一个函数，写成伪码如下：</p>
<code>
	<pre>
	var seed = new nilnul.num.rational.float_.based.Binary(1);
	yield return true;

	var target = new Binary(2); 
	while (true)
	{
		var seedAppendedOne = new rational.float_.based.Binary(seed);
		seedAppendedOne.appendOne();

		var squared = seedAppendedOne.toSquare();
		if (squared < target)
		{
			seed = seedAppendedOne;
			yield return true;

		}
		else if (squared == target)
		{
			seed = seedAppendedOne;
			yield return true;
			yield break;

		}
		else
		{
			seed.appendZero();
			yield return false;
		}



	}

	yield break;

	</pre>


</code>
   <p>换言之，我们通过不断尝试，搜索取得其二进制小数的各位。</p>
<h1>尾部不同情况</h1>
<p>若实数的小数序列后边都为1，比如0.0111111111...，其其实与0.10000...相等。</p>
<p>也就是说一个实数可以有两种表达方式。对于这两种，我们取后者，因为后者更简短。</p>
<p>那么怎么判断一个实数（一个像上面伪代码的函数）后半部分是否都是1呢？让人悲哀的是，我们没有统一的规则（另一个函数）来判断。也就是说，这个问题是计算机无法全部解决的问题（计算机程序的字符串、运行步骤是可数的，对应不了不可数的问题集合）——可能这也是令人高兴的事，我们总算知道计算机不如我们了。我们现在甚至还<a href="http://mathoverflow.net/questions/40145/irrationality-of-pie-pipi-and-epi2">不知道
	<math>
		<msup>
			<mi>&pi;</mi>
				<msup>
					<mi>&pi;</mi>
					<msup>
						<mi>&pi;</mi>
						<mi>&pi;</mi>
					</msup>
				</msup>

		</msup> 

	</math>是不是整数</a>；以及<a href="http://mathforum.org/library/drmath/view/51617.html">其它类似问题</a>。</p>
<p>当然，对于有的（最多可数个）实数我们是能判定的。</p>
<p>为了便于判定，我们也可以把实数写成递归的形式，即给出前n个bit，然后尾部是另一个函数可以给出后面k个bit及k个bit的函数...</p>
<p>如果这样写后，尾部的函数是个总返回1或者0或者循环的，我们就可以判断其是有理数。</p>
<h1>连分式</h1>
<p>无理数总可以化为唯一的标准连分式。如果取该连分式的前半部分，则该连分式化为有理数后，是同分母情况下，最精确的表达。<a href="continuedFraction.ppt">参见PPT中有关部分</a>。</p>