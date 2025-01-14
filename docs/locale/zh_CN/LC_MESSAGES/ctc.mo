��          �               �   /   �   ~        �  �   �  F   <  
   �  �   �     =  
   F  #   Q  D   u  H   �  �    (   �  m   �     R  q   b  0   �       �     /   �     �     �  0     C   >   :ref:`induction variables<induction-var-label>` A compile time constant (CTC) is a value that can be computed at compile time. There are four types of compile time constants. Compile Time Constant Note: the order is important: ``const static`` is not allowed when declaring a function parameter, but allowed when declaring a property. There are several cases where only compile time constants are allowed. array size function parameters that are declared as ``static const`` [#]_ such as ``size`` in ``reverseBytes(bytes b, static const int size)`` and ``repeat(T e, static const int size)`` literals loop bound static constant function parameters static constant properties of a contract, initialized with a literal write to an array element using :ref:`index operator<array-index-label>` Project-Id-Version:  sCrypt
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
 :ref:`归纳变量<induction-var-label>` 编译时常量 (Compile Time Constant) 是可以在编译时计算的值。编译时常量有四种类型。 编译时常量 注意：顺序很重要：声明函数参数时不允许使用 ``const static``，但在声明属性时允许。 有几种情况只允许使用编译时常量。 数组大小 声明为 ``static const`` [#]_ 的函数参数，例如 ``reverseBytes(bytes b, static const int size)`` 和 ``repeat(T e, static const int size)`` 中的 ``size`` 常量，比如数字、布尔值、`bytes` 值 循环限制 静态常量函数参数 合约的静态常量属性，用常量初始化 使用 :ref:`索引运算符<array-index-label>` 写入数组元素 