<%@ Control Language="C#" AutoEventWireup="true" %>

<section>
	<h1>小！小！小！！！零空工程师是怎么用区间套住一个个实数的？！</h1>
	<p>
		<a href="http://nilnul.com/app_/nilnul._express_._compose_/Loader1.aspx?url=/app_/nilnul.num._quotient_.KEN/eg_/Big.ascx&amp;title=%e9%9b%b6%e7%a9%ba%e7%b3%bb%e7%bb%9f%e6%98%af%e6%80%8e%e4%b9%88%e5%a4%84%e7%90%86%e5%a4%a7%e5%a4%a7%e5%a4%a7%e6%9c%89%e7%90%86%e6%95%b0%e7%9a%84%ef%bc%9f">上篇文章</a>我们谈到零空是怎么处理大、大、大有理数的。我们日常生活中记录多用的是有理数。
	</p>
	<p>
		有理数之间存在空隙，使得其不连续或者说不完备。有些有理数运算的结果不再是有理数；比如在几何上按照勾股定理，直角边长为1则斜边为&#x221A;2，这就不是有理数；圆周率也不是有理数。因此有理数域需要扩充来使得这些运算能够封闭，即结果总是在指定的数域，从而运算可以进行复合（输出可以再次作为输入）。
	</p>
	<p>
		在小学，我们是把形如&#x221A;2或者圆周率的数称为无理数，而无理数则是无限不循环小数。无理数和有理数和在一起则称为实数。
	</p>
	<p>
		那无限不循环小数又是什么呢？在计算机里怎么表示无限不循环小数呢？这个问题和有理数在一起就牵扯到怎么定义实数的问题。
	</p>
	<p>
		历史上，科学家们曾经尝试了各种定义。哪种定义好呢？好的定义应该是不犯以真为假及亦假为真的错误。想象一下，我们把这个定义交给自动武器，那么这个武器从不误伤也不要漏掉目标。
	</p>
	<p>
		定义是用已知去描述未知，还要尽可能简洁；为了简洁有时我们要做准备工作，把用到的都用简洁的东西定义一番。自然地，科学家们对实数的定义都是基于有理数的。历史上有些传统实数定义已经被替代，我这里就不讨论了；我们目前用到的定义大概是：
	</p>
	<ol>
		<li>有理数和无限不循环小数</li>
		<li>极限相等的柯西数列集合</li>
		<li>嵌套闭区间不断缩小，套住的就是实数。</li>
	</ol>
	<p>
		首先对第一个，我们没有办法设计一种存储结构来存储所有的无限不循环小数。这是因为我们的计算机无论是存储还是运算周期都是离散的，无法和连续的实轴一一对应，势必无法表示一些实数。因此，我们必须退而求其次，如果不能表示<strong>所有</strong>实数，至少我们要能表示<strong>任意</strong>实数，即你给定任意一个实数，我们就能表示出来；而且我们表示的时候，不是用无限不循环小数（因为装不下），而是用一种产生小数的形式。
	</p>
	<p>
		这就用到后面两个定义。 以下我们分别来讨论这两个定义，其中用到的代码已经推送到：<a href="https://github.com/nilnul/nilnul.num._real_._LIB_">https://github.com/nilnul/nilnul.num._real_._LIB_</a> ，你在阅读时可以从中搜索关键字找到对应的代码。</p>
	<section>
		<h1>用等价划分来的集合来定义实数</h1>
		<p>
			其中的定义2，是理论上最好看的，数学家们最喜欢，因为它公平的对待每一个柯西数列。</p>
		<p>
			比如，在<strong>陶哲轩</strong>老师的《Analysis I》第5章就讨论了用有理数柯西数列定义实数。</p>
		<p>
			零空实数库最早也是用这种定义，把每个实数描述为一个集合（当然是无穷的）。然后，对着这个抽象的集合我们不能空想，我们得找个具体的成员处理。所以上述集合被定义为：
		</p>
		<p>
			<code>
				<pre>public interface CofinalI
{
	nilnul.num._real.approach.GeneratorI choice { get; }
}</pre>
			</code>
		</p>
		<p>
			其中 choice表示从中任意抽取一个成员作为代表，我们就处理它来做比如能够转换为小数的事。
		</p>
		<p>
			注意这里任意抽取怎么任意呢？计算机的抽取都是程序化的，没有任意。这里我们也没有给出怎么抽取，只是说明你要定义实数，那你就得写怎么抽取的程序。而这样的程序一定存在，为什么？我们解释不了，所以我们就把这个当成不解释的公理好了；这就是集合论里的选择公理。如果你觉得集合论里的选择公理很抽象，或者搞不明白为什么要有这个公理，我建议您不妨阅读一下我们的代码。我们的程序体现了选择公理及其用途。
		</p>
		<p>
			那选择出来的又是什么东西呢？一个柯西数列，即收敛的数列。这个数列可以产生一个收敛过程，可以按需要不断给我们的小数追加后续的小数位，从而不断增加精度。
		</p>

		<p>
			<code>
				<pre>public interface GeneratorI
{
	ApproachI1 generate();

}</pre>
			</code>
		</p>
		<p>
			上面的ApproachI1就是柯西数列的一个收敛过程。注意同一个柯西数列可以产生多个收敛过程，它们初始状态一样，但俟后，有的收敛到第10步，有的收敛到第89步，等等，取决于用户需要。那么怎么定义这个收敛过程呢？
			如下：</p>
		<p>
			<code>
				<pre>public interface ApproachI{
	void squeeze(quotient_.Positive1 diameter);
	quotient.bound_.Closed current{get;}
}
</pre>
			</code>
		</p>
		<p>
			即你给定一个正的有理数，无论它多么小，程序不断收缩有理数闭区间使得其直径不大于给定的有理数。换言之，从这个区间里任意取一个点（比如取中点），我们可以保证其与所求实数的差距不会超过你给的正有理数。
			这个用有理数闭区间不断缩小去套住实数的做法，也还得益于我考研时在北大<strong>李忠</strong>写的《高等数学》一书里看到后受到的启发。有兴趣的读者可以参考，印象当中是在第一章。</p>
		<p>
			看到这里我估计你希望我给你举个实例。安排！
		</p>
		<p>
			比如我们来定义自然对数的底e。在零空里我们称之为Euler（<a href="https://github.com/nilnul/nilnul.num._real_._LIB_/blob/nilnul-pub/nilnul0/num/real_/Euler.cs">https://github.com/nilnul/nilnul.num._real_._LIB_/blob/nilnul-pub/nilnul0/num/real_/Euler.cs</a> ），这是因为在零空系统里我们不允许类型名称用单字母，也是为了纪念大数学家Euler（注意自然对数的底是Euler的第一个字母）。
		</p>
		<p>
			<code>
				<pre>public class Euler{
			// ...
	private nilnul.num.quotient.bound_.Closed _bound;
	public nilnul.num.quotient.bound_.Closed current => _bound;


	public void squeeze(num.quotient_.Positive1 diameter)
	{
		while (
			current.diameterGt(diameter)

		)
		{
			boxed.moveNext(); // boxed is the series of 0+1+1/2+1/6+1/24+ ...+ 1/(n!) + ...
			var newEstimate = nilnul.num.quotient.bound_.closed.op_.unary_._ShiftX.Op(
				this.boxed.current //.accumulated ,it's 0 initally
				,
				num.quotient.bound_.Closed.Create_byMergeBorder(
				this.boxed.nextAugend * _exp0_x )  // [the (n+1)th derivative of (e^y)]  * (x-0)^(n+1) /(n+1)!, where y is in [0, x]. 
			);
			_bound = nilnul.num.quotient.bound_.closed.co_.joint._IntersectX.Intersect(_bound, newEstimate);

		}
	}
}
</pre>
			</code>
		</p>
		<p>
			这里我们用级数的方法不断逼近e的值。注意其中的_bound会存储当前收敛到的区间。因此，同一个数列，因_bound的不同而处于收缩的不同阶段；它们作为实数是一样的，但看已产生的序列则是不同的。</p>
		<p>
			这里顺便抒发两个发散出去地感想：
		</p>
		<ol>
			<li>级数是我们最常用的收敛形式，但不是唯一的。</li>
			<li>我们用e而非&pi;，是因为π的级数要复杂得多，收敛得也慢得多。这是e在无理数届一哥地位的一个体现。</li>
		</ol>
		<p>
			发散完，回来。我们看到采用这个定义，具体实现其实是在最后的收敛的过程。前面的等价集合和序列（即收敛过程产生器）几乎没什么具体实现，且对每个实数的定义几乎都是一样的；这样，我们定义每个实数都要带着差不多的包裹。实际上，零空系统在用这种方法实现实数的时候，最后干脆先写具体收敛过程，然后再用统一的方式派生出前面两个铺垫的东西。
		</p>
		<p>
			这真地必要吗？</p>
	</section>
	<section>
		<h1>
			简化定义为具体收敛过程
		</h1>
		<p>
			在前面，我们尝试用等价集合来定义实数。这是理论上看起来最完美的，因为它反映了多个收缩过程可以收缩到同一个实数，而实数不因收缩过程不同而变。</p>
		<p>
			但在实现中我们看到，为了计算，我们总要选择一个数列，那么实数的计算就取决于我们选择的数列而无论它是好（如收敛快）还是坏（如计算复杂）。 此外，在实现过程中，我们前述说了，真正具体的实现就在收敛过程，而为了符合理论，我们不得不给每个实数戴上同样的帽子，这让我们写很多重复的代码；即使我们把重复的代码自动化，我们在使用实数的过程中，也要先找到集合，再选择序列，再产生一个收缩过程具体运算，绕了好大的弯子才达到真正具体的运算；这一链条显得柔性有余，刚性不足。</p>
		<p>
			所以，我们最后转向了不戴那两层帽子，而是直接用收敛过程来代表实数。这就是开篇所说的定义3.</p>
		<p>
			当然这么做的代价是</p>
		<ol>
			<li>同一个序列的收敛过程因收敛阶段不同而不同，而按照我们的定义就是两个实数。。</li>
			<li>不同序列可能代表同一个实数。</li>
		</ol>
		<p>
			以上两个问题，我们可以通过定义这些实数相等来弥补。</p>
	<p>
			回想我们对有理数定义时在理论完美和程序实现间折衷，再一次地，我们注意到理论定义实数和计算机程序实现之间的折衷。</p>
	<p>
			零空系统最终采用了这个定义3。定义2虽然放在了我们的代码库，已经不参与运行了，仅供学习者参考。</p>
		<p>
			这里值得一提的是在陶哲轩老师《Analysis I》第112页第一段：“This rather subtle distinction between a rational c and a real c turns out not to be very 
important”，这是陶老师写的，当然是对的；但值得编程实现人员注意的是，在实现中（比如在零空系统实现中），这两者的区别是很大的：我们在实现实数的时候用的是有理数，收敛到有理数区间（这样才能得到小数），而收敛的实数序列极限当成实数，其收敛到的是实数区间，如果要得到有理数区间，还要把实数区间两端实数的有理数区间收敛，即收敛两次。显然程序逻辑明显不一样，后者复杂一些。</p>
	</section>
	<section>
		<h1>
			测试
		</h1>
		<p>
			您也可以尝试（尤其是单步执行）我们的测试代码（<a href="https://github.com/nilnul/nilnul.num._real_._TEST_">https://github.com/nilnul/nilnul.num._real_._TEST_</a> ）体会一下我们的设计。

		</p>
		<p>
			比如在<a href="https://github.com/nilnul/nilnul.num._real_._TEST_/blob/nilnul-pub/eg_/euler/UnitTest1.cs">https://github.com/nilnul/nilnul.num._real_._TEST_/blob/nilnul-pub/eg_/euler/UnitTest1.cs</a> 中：
		</p>
		<p><code>
			<pre>
var real2dec = nilnul.num.real.to_._RadixX._Clamp2Dec_DigitsAftDot(r, precision);
Debug.WriteLine(
	real2dec
);
			</pre>
		   </code>

		</p>
		<p>

			在调试模式下计算出来2.718281828459用了8.5秒，显然很慢。</p>
	</section>
	<section>
		<h1>小结</h1>
		<p>
			在前面我们说到零空有理数库的时候，我们提到我们正在改写有理数库以使得不频繁约分来提高速度。我们的实数库现在还在用改写前的有理数，因此速度有点慢。我们目前挤压的还有其它一些研发任务；我们计划在人手不那么紧张以及主要开发者能够重新尽快全力投入后，对其进行重写。
		</p>
		<p>
			当然实数库里还有其它问题待解：</p>
		<ol>
			<li>怎样提高收敛速度（最粗糙得方法是像我们前面的例子那样，只要区间不符合要求就循环；但这样太慢，能否根据精度要求，直接一步到位得到所需区间呢）；这里面既有理论问题（寻找收敛快的区间）也有实现问题。</li>
			<li>各种运算得到实数如何表示，并保证速度</li>
			<li>判断每个实数相等是理论上已经直到的不可能问题。但实际上，对于能判定的，怎么实现并保证速度？最粗糙的就是看实数的差（一个实数）是否为0，但是这个实数可能是0但区间直径都比0大（不要忘了极限是可以不在序列的某一个数）。</li>
		</ol>
		<p>
			最后，如果你想参与编辑本文章： 
		</p>
	</section>

</section>
