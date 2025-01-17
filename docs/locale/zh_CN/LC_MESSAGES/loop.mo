��    
      l               �   �   �   �   �     :  �  K     D     W  r   \     �     �  �  �  �   �  �   {       �    !   �	     �	  j   
     q
     ~
   Because `loop unrolling <https://en.wikipedia.org/wiki/Loop_unrolling>`_ is done at compile time, the compiler must know ``maxLoopCount``. That is, it must be a :ref:`compile time constant<ctc-label>`. Bitcoin script does not provide looping constructs natively for security reasons. sCrypt achieves looping by repeating the loop body ``maxLoopCount`` times. For example, the loop Conditional loop If ``maxLoopCount`` is set too small, the contract may not work correctly. If ``maxLoopCount`` is set too large, the resulting script is bloated unnecessarily and costs more to execute. There are a number of ways to choose the right ``maxLoopCount`` judiciously. One way is to simulate the contract off chain and find the number of loops. Another way is to exploit the characteristics of the looping itself. For example, if a loop iterates over each bit of a ``sha256`` hash, ``maxLoopCount`` is ``256``. Induction variable Loop `Induction variable <https://en.wikipedia.org/wiki/Induction_variable>`_ can be defined when loop index is needed. break is equivalently unrolled to Project-Id-Version:  sCrypt
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-08 12:13+0800
PO-Revision-Date: 2021-10-07 06:10+0000
Last-Translator: qtom zheng <zhfnjust@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/scrypt-1/teams/121283/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 因为 `循环展开 <https://en.wikipedia.org/wiki/Loop_unrolling>`_ 是在编译时完成的，编译器必须知道 ``maxLoopCount``。也就是说，它必须是一个 :ref:`编译时常量 <ctc-label>`。 出于安全原因，比特币脚本本身不提供循环结构。 sCrypt 通过重复循环体 ``maxLoopCount`` 次来实现循环。例如，循环 条件循环 如果 ``maxLoopCount`` 设置得太小，合约可能无法正常工作。如果 ``maxLoopCount`` 设置得太大，生成的脚本会不必要地膨胀，并且执行成本更高。有多种方法可以明智地选择正确的 ``maxLoopCount``。一种方法是模拟链下合约并找到循环次数。另一种方法是利用循环本身的特性。例如，如果循环遍历``sha256`` 散列的每一位，``maxLoopCount`` 就是 ``256``。 归纳变量 (Induction Variable) 循环 `归纳变量 <https://en.wikipedia.org/wiki/Induction_variable>`_ 可以在需要循环索引时定义。 跳出循环 等效地展开为 