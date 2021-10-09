Þ    ]                    ì     í       e     û   ø     ô  !        6  '   V     ~  !       ¾  .   Ý	  !   
     .
  1   =
  p   o
  d   à
     E     G     J     M     P     R     T     V     X     Z     \     ^  k   `     Ì  ?   Ý          )     7     C     R     o  
          R     V   ò     I  G   L       ~     	        &  
   5     @  !   H     j     x               (     >     R     g  a   ò  y   T  ú   Î  ]   É     '     4     C     Ê  <   Ð       Í       ß     æ  	   ì     ö  	   þ       	     	         *     2     8     L  u  Ï     E     V     \     c     k     r     w            ·    |   D     Á  Y   Õ    /  #   =     a  "     *   ¢      Í  $   î  %     -   9!  '   g!     !  .   £!     Ò!  l   V"     Ã"     Å"     È"     Ë"     Î"     Ð"     Ò"     Ô"     Ö"     Ø"     Ú"     Ü"  k   Þ"     J#  B   Z#     #  	   ª#     ´#     Á#     à#  	   ü#     $     $  H   $  W   c$     »$  3   ¾$  	   ò$  v   ü$  	   s%     }%  	   %  	   %     %  	   º%  	   Ä%     Î%  	   U&     _&     v&     &  Q   &  Z   ê&  ]   E'  ð   £'  k   (      )     )     )     )  >   ¦)     å)  Í  é)     ·/     ¾/  	   Ä/     Î/  	   Ö/     à/  	   î/  	   ø/     0     
0     0     !0  m  ©0     2     %2     +2     22     :2     J2     N2     V2     ]2   **Array Literals** - a comma-separated list of expressions, enclosed in square brackets. Array size must be an integer constant greater than zero. **Define Struct** **Index Operator** - index starting from 0. Out of bound access fails contract execution immediately. **Initialize/set an array to the same value** - Function ``T[size] repeat(T e, static const int size)`` returns an array with all ``size`` elements set to ``e``, where T can be any type. Note ``size`` must be a :ref:`compile time constant<ctc-label>`. **OpCodeType** - a OpCode type. **PrivKey** - a private key type. **PubKey** - a public key type. **Ripemd160** - a RIPEMD-160 hash type. **Sha1** - a SHA-1 hash type. **Sha256** - a SHA-256 hash type. **Sig** - a signature type in `DER <https://docs.moneybutton.com/docs/bsv-signature.html>`_ format, including `signature hash type <https://github.com/libbitcoin/libbitcoin-system/wiki/Sighash-and-TX-Signing>`_, which is ``SIGHASH_ALL | SIGHASH_FORKID`` (``0x41``) in the below example. **SigHashPreimage** - a sighash preimage type. **SigHashType** - a sighash type. **Use Struct** **bool** - a boolean value ``true`` or ``false``. **bytes** - a variable length array of bytes, whose literals are in quoted hexadecimal format prefixed by ``b``. **int** - a signed integer of arbitrary length, whose literals are in decimal or hexadecimal format. 1 10 11 12 2 3 4 5 6 7 8 9 A struct (or structure) is a collection of variables (can be of different basic types) under a single name. Access Modifiers An array is a fixed-size list of values of the same basic type. Array Types Associativity Basic Types Code Separator Default: no keyword required Domain Subtypes Externally Formal Specification Line comment starts with ``//`` and block comment comes between ``/*`` and ``*/``. Most of the syntax is self explanatory. Syntax unique to sCrypt will be covered later. No Only public functions can be called externally by Bitcoin transactions. Operator Operator ``&&``, ``||``, and ``? :`` use `short-circuit evaluation <https://en.wikipedia.org/wiki/Short-circuit_evaluation>`_. Operators Other contract Precedence Private Public: only applies to functions Same contract Scoping Scoping in sCrypt follows the prevailing scoping rules of C99 and Solidity. Outer scope variable is shadowed by the inner scope variable of the same name. Struct Types Subtypes of ``bytes`` Subtypes of ``int`` Syntax Specification The ``auto`` keyword specifies that the type of the variable, of basic type, declared will be automatically deducted from its initializer. There are several subtypes, specific to the Bitcoin context, used to further improve type safety. There are three types of access modifiers available to help restrict the scope of properties and functions of a contract: Three or more ``*`` in a line inserts an `OP_CODESEPARATOR <https://en.bitcoin.it/wiki/OP_CHECKSIG#How_it_works>`_. It is used to exclude what comes before (and including itself) it from being part of the signature. Note there is no ``;`` at the end. To cast a supertype ``bytes`` to them, a function of the type name must be explicitly called. Type Aliases Type Inference Type aliases create a new name for a type. It does not actually create a new type, it merely creates a new name to refer to that type. Types Variables declared const cannot be changed once initialized. Yes \begin{align*}
program &::= [importDirective]^*\ [contract]^+\\
importDirective &::= \mathrm{import}\ "\mathrm{ID}";\\
contract &::= \mathrm{contract}\ \mathrm{ID}\ \{\ [var]^*\ [constructor]\ [function]^+\ \}\\
var &::= formal;\\
formal &::= \mathrm{TYPE}\ \mathrm{ID}\\
constructor &::= \mathrm{constructor}([formal[,\ formal]^*])\ \{\ [stmt]^*\ \}\\
function &::= \mathrm{[public|static]}\ \mathrm{function}\ \mathrm{ID}([formal[,\ formal]^*])\ \mathrm{[returns}\ (\mathrm{TYPE]})\ \{\ [stmt]^*\ \mathrm{[return}\ expr;]\ \}\\
stmt &::= \mathrm{TYPE}\ \mathrm{ID} = expr;\\
        &\ \ \ |\ \ \mathrm{ID}\ \mathrm{ID} = \mathrm{new}\ \mathrm{ID}(expr^*);\\
        &\ \ \ |\ \ \mathrm{ID} = expr;\\
        &\ \ \ |\ \ \mathrm{require}(expr);\\
        &\ \ \ |\ \ \mathrm{exit}(expr);\\
        &\ \ \ |\ \ \mathrm{if}\ (expr)\ stmt\ [\mathrm{else}\ stmt]\\
        &\ \ \ |\ \ \mathrm{loop}\ (intConst)\ stmt\\
        &\ \ \ |\ \ \{\ [stmt]^*\ \}\\
        &\ \ \ |\ \ \mathrm{CODESEPARATOR}\\
expr &::= \mathsf{UnaryOp}\ expr\\
        &\ \ \ |\ \ expr\ \mathsf{BinaryOp}\ expr\\
        &\ \ \ |\ \ \mathrm{ID}(expr[,\ expr]^*)\\
        &\ \ \ |\ \ \mathrm{ID}.\mathrm{ID}\\
        &\ \ \ |\ \ \mathrm{ID}.\mathrm{ID}(expr[,\ expr]^*)\\
        &\ \ \ |\ \ \mathrm{ID}\mathbf{[}expr:expr\mathbf{]}\\
        &\ \ \ |\ \ (expr)\\
        &\ \ \ |\ \ \mathrm{ID}\\
        &\ \ \ |\ \ boolConst \\
        &\ \ \ |\ \ intConst \\
        &\ \ \ |\ \ bytesConst \\
\end{align*} ``&&`` ``&`` ``* / %`` ``+ -`` ``- ! ~`` ``< <= > >=`` ``<< >>`` ``== !=`` ``? :`` ``^`` ``const`` Variables ``exit(bool status);`` statement terminates contract execution. If ``status`` is ``true``, contract succeeds; otherwise, it fails. ``if`` condition can be of type ``int`` and ``bytes``, besides ``bool``. They are implicitly converted to ``bool`` as in C and Javascript. An ``int`` expression is evaluated to ``false`` if and only if it is ``0`` (including negative ``0``). A ``bytes`` expression is evaluated to ``false`` if and only if every of its byte is ``b'00'`` (including empty ``bytes`` ``b''``). ``if`` statement ``|`` ``||`` default exit() left private public right Project-Id-Version:  sCrypt
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
 **æ°ç»å¸¸é** - ä»¥éå·åéçè¡¨è¾¾å¼åè¡¨ï¼æ¬å¨æ¹æ¬å·ä¸­ãæ°ç»å¤§å°å¿é¡»æ¯å¤§äºé¶çæ´æ°å¸¸éã **å®ä¹ç»æä½** **ç´¢å¼è¿ç®ç¬¦** - ç´¢å¼ä» ``0`` å¼å§ãè¶çè®¿é®ç«å³ä½¿åçº¦æ§è¡å¤±è´¥ã **å°æ°ç»åå§å/è®¾ç½®ä¸ºç¸åå¼** - å½æ° ``T[size] repeat(T e, static const int size)`` è¿åä¸ä¸ªæ°ç»ï¼å¶ä¸­ææ ``size`` åç´ é½è®¾ç½®ä¸º ``e`` ï¼å¶ä¸­ ``T`` å¯ä»¥æ¯ä»»ä½ç±»åãæ³¨æ ``size`` å¿é¡»æ¯ :ref:`ç¼è¯æ¶å¸¸é <ctc-label>`ã **OpCodeType** - æä½ç ç±»åã **PrivKey** - ç§é¥ç±»åã **PubKey** - ä¸ç§å¬é¥ç±»åã **Ripemd160** - RIPEMD-160 åå¸ç±»åã **Sha1** - SHA-1 åå¸ç±»åã **Sha256** - SHA-256 åå¸ç±»åã **Sig** - `DER <https://docs.moneybutton.com/docs/bsv-signature.html>`_ æ ¼å¼çç­¾åç±»åãåå«  `ç­¾ååå¸ç±»å <https://github.com/libbitcoin/libbitcoin-system/wiki/Sighash-and-TX-Signing>`_ï¼å¦ä¸ä¾å­ä¸­çç­¾ååå¸ç±»åæ¯ ``SIGHASH_ALL | SIGHASH_FORKID`` (``0x41``) ã **SigHashPreimage** - sighash ååç±»åã **SigHashType** - ç­¾ååå¸ç±»åã **ä½¿ç¨ç»æä½** **bool** - å¸å°å¼ ``true`` æ ``false``ã **bytes** - ä¸ä¸ªå¯åé¿åº¦çå­èæ°ç»ï¼å¶å­é¢éï¼literalsï¼éç¨å¸¦å¼å·çåå­è¿å¶æ ¼å¼ï¼åç¼ä¸º ``b``ã **int** - ä»»æé¿åº¦çæç¬¦å·æ´æ°ï¼å­é¢éï¼literalsï¼æåè¿å¶ååå­è¿å¶ä¸¤ç§æ ¼å¼ã 1 10 11 12 2 3 4 5 6 7 8 9 ç»æä½æ¯åä¸ªåç§°ä¸çåéçéåãåéå¯ä»¥æ¯ä¸åçåºæ¬ç±»åãæ°ç»æç»æä½Â  è®¿é®ä¿®é¥°ç¬¦ æ°ç»æ¯é¿åº¦åºå®çï¼å·æç¸ååºæ¬ç±»åçå¼åè¡¨ã æ°ç»ç±»å å³èæ§ åºæ¬ç±»å Code Separator ä»£ç åéç¬¦ é»è®¤ï¼ä¸éè¦å³é®å­ å­ç±»å å¤é¨ å½¢å¼è§è è¡æ³¨éä»¥ ``//`` å¼å¤´ï¼åæ³¨éä½äº ``/*`` å ``*/`` ä¹é´ã å¤§é¨åè¯­æ³å«ä¹é½æ¯æ¾èæè§çãsCryptç¹æçè¯­æ³ä¼å¨åé¢ä»ç»ã No æ¯ç¹å¸äº¤æåªè½ä»å¤é¨è°ç¨å¬å±å½æ°ã è¿ç®ç¬¦ è¿ç®ç¬¦ ``&&``ã``||`` å ``? :`` ä½¿ç¨ `ç­è·¯è¯ä¼° <https://en.wikipedia.org/wiki/Short-circuit_evaluation>`_. è¿ç®ç¬¦ å¶ä»åçº¦ ä¼åçº§ ç§æç å¬å±ï¼ä»éç¨äºå½æ° åçº¦å ä½ç¨å sCryptçä½ç¨åéµå¾ªC99åSolidityçç°è¡ä½ç¨åè§åãå¤é¨ä½ç¨åçåéä¼è¢«åé¨ä½ç¨åçåååéè¦çã ç»æä½ ``bytes`` çå­ç±»å ``int`` çå­ç±»å è¯­æ³è§è ``auto`` å³é®å­è¡¨ç¤ºåéçç±»åç±åéçåå§å¼èªå¨æ¨å¯¼åºæ¥ã æå ä¸ªç¹å®äºæ¯ç¹å¸ä¸ä¸æçå­ç±»åï¼ç¨äºè¿ä¸æ­¥æé«ç±»åå®å¨æ§ã å¯ä»¥ä½¿ç¨ä¸ç§ç±»åçè®¿é®ä¿®é¥°ç¬¦æ¥å¸®å©éå¶åçº¦çå±æ§åå½æ°çèå´ï¼ ä¸è¡ä¸­ä¸ä¸ªææ´å¤ ``*`` è¡¨ç¤ºæå¥ä¸ä¸ª `OP_CODESEPARATOR <https://en.bitcoin.it/wiki/OP_CHECKSIG#How_it_works>`_ãå®ç¨äºå°å¶ä¹åçåå®¹ï¼åæ¬å¶èªèº«ï¼æé¤å¨ç­¾åçä¸é¨åä¹å¤ãæ³¨ææ«å°¾æ²¡æ ``;``ã è¦æ ``bytes`` ç±»åå¼ºå¶è½¬æ¢ææä¸ªå­ç±»åï¼å¿é¡»æ¾å¼è°ç¨ä¸è¯¥å­ç±»åååçå½æ°ã ç±»åå«å ç±»åæ¨æ­ ç±»åå«åä¸ºç±»ååå»ºä¸ä¸ªæ°åç§°ãå®å®éä¸å¹¶ä¸åå»ºæ°ç±»åï¼å®åªæ¯åå»ºä¸ä¸ªæ°åç§°æ¥å¼ç¨è¯¥ç±»åã ç±»å å£°æä¸º ``const`` çåéä¸æ¦åå§åå°±ä¸è½æ´æ¹ã Yes \begin{align*}
program &::= [importDirective]^*\ [contract]^+\\
importDirective &::= \mathrm{import}\ "\mathrm{ID}";\\
contract &::= \mathrm{contract}\ \mathrm{ID}\ \{\ [var]^*\ [constructor]\ [function]^+\ \}\\
var &::= formal;\\
formal &::= \mathrm{TYPE}\ \mathrm{ID}\\
constructor &::= \mathrm{constructor}([formal[,\ formal]^*])\ \{\ [stmt]^*\ \}\\
function &::= \mathrm{[public|static]}\ \mathrm{function}\ \mathrm{ID}([formal[,\ formal]^*])\ \mathrm{[returns}\ (\mathrm{TYPE]})\ \{\ [stmt]^*\ \mathrm{[return}\ expr;]\ \}\\
stmt &::= \mathrm{TYPE}\ \mathrm{ID} = expr;\\
        &\ \ \ |\ \ \mathrm{ID}\ \mathrm{ID} = \mathrm{new}\ \mathrm{ID}(expr^*);\\
        &\ \ \ |\ \ \mathrm{ID} = expr;\\
        &\ \ \ |\ \ \mathrm{require}(expr);\\
        &\ \ \ |\ \ \mathrm{exit}(expr);\\
        &\ \ \ |\ \ \mathrm{if}\ (expr)\ stmt\ [\mathrm{else}\ stmt]\\
        &\ \ \ |\ \ \mathrm{loop}\ (intConst)\ stmt\\
        &\ \ \ |\ \ \{\ [stmt]^*\ \}\\
        &\ \ \ |\ \ \mathrm{CODESEPARATOR}\\
expr &::= \mathsf{UnaryOp}\ expr\\
        &\ \ \ |\ \ expr\ \mathsf{BinaryOp}\ expr\\
        &\ \ \ |\ \ \mathrm{ID}(expr[,\ expr]^*)\\
        &\ \ \ |\ \ \mathrm{ID}.\mathrm{ID}\\
        &\ \ \ |\ \ \mathrm{ID}.\mathrm{ID}(expr[,\ expr]^*)\\
        &\ \ \ |\ \ \mathrm{ID}\mathbf{[}expr:expr\mathbf{]}\\
        &\ \ \ |\ \ (expr)\\
        &\ \ \ |\ \ \mathrm{ID}\\
        &\ \ \ |\ \ boolConst \\
        &\ \ \ |\ \ intConst \\
        &\ \ \ |\ \ bytesConst \\
\end{align*} ``&&`` ``&`` ``* / %`` ``+ -`` ``- ! ~`` ``< <= > >=`` ``<< >>`` ``== !=`` ``? :`` ``^`` ``const`` åé ``exit(bool status);`` è¯­å¥ç»æ­¢åçº¦æ§è¡ãå¦æ ``status`` ä¸º ``true`` ï¼ååçº¦æ§è¡æåï¼å¦ååçº¦æ§è¡å¤±è´¥ã ``if`` æ¡ä»¶å¯ä»¥æ¯ ``int`` å ``bytes`` ç±»åï¼é¤äº ``bool`` ãå®ä»¬åå¨ C å Javascript ä¸­ä¸æ ·è¢«éå¼è½¬æ¢ä¸º ``bool``ã ``int`` è¡¨è¾¾å¼è¢«è¯ä¼°ä¸º ``false`` å½ä¸ä»å½å®ä¸º ``0`` ï¼åæ¬è´æ° ``0``ï¼ã ``bytes`` è¡¨è¾¾å¼è¢«è¯ä¼°ä¸º ``false`` å½ä¸ä»å½å®çæ¯ä¸ªå­èé½æ¯ ``b'00'`` ï¼åæ¬ç©ºç ``bytes``  ``b''``ï¼ã ``if`` è¯­å¥ ``|`` ``||`` default ``exit`` è¯­å¥ å·¦ private public å³ 