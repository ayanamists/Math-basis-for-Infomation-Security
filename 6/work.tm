<TeXmacs|1.99.12>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|\<#4FE1\>\<#606F\>\<#5B89\>\<#5168\>\<#6570\>\<#5B66\>\<#57FA\>\<#7840\>
  \<#7B2C\>\<#516D\>\<#6B21\>\<#4F5C\>\<#4E1A\>>|<doc-author|<author-data|<author-name|18340087
  \<#674E\>\<#6668\>\<#66E6\>>>>>

  <section*|(3)>

  \<#6211\>\<#4EEC\>\<#6709\>

  <\equation*>
    3<rsup|90>\<equiv\>1 <around*|(|mod 91|)>
  </equation*>

  \<#4F46\>\<#662F\>

  <\equation*>
    91=7\<times\>13
  </equation*>

  \<#662F\>\<#4E00\>\<#4E2A\>\<#5408\>\<#6570\>\<#3002\>\<#6240\>\<#4EE5\>91\<#662F\>\<#57FA\>3\<#7684\>\<#4F2A\>\<#7D20\>\<#6570\>

  <section*|(6)>

  \<#7531\>\<#4E8E\>\<#8BFE\>\<#4E0A\>\<#6CA1\>\<#6709\>\<#4ECB\>\<#7ECD\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#8FD9\>\<#91CC\>\<#9996\>\<#5148\>\<#8BC1\>\<#660E\>\<#4E00\>\<#4E0B\>Korselt\<#5B9A\>\<#7406\>\<#FF1A\>

  <\theorem>
    \<#4E00\>\<#4E2A\>\<#5408\>\<#6570\>\<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#5F53\>\<#4E14\>\<#4EC5\>\<#5F53\>\<#5BF9\>\<#5176\>\<#6BCF\>\<#4E00\>\<#4E2A\>\<#7D20\>\<#56E0\>\<#5B50\><math|p>\<#90FD\>\<#6709\>\<#FF1A\>

    <\enumerate>
      <item><math|p<rsup|2>\<nmid\>n>

      <item><math|p-1\|n-1>
    </enumerate>
  </theorem>

  <\proof>
    \;

    \<#5145\>\<#5206\>\<#6027\>\<#FF1A\>

    \<#5982\>\<#679C\>\<#4E00\>\<#4E2A\>\<#5408\>\<#6570\><math|n>\<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#90A3\>\<#4E48\>\<#FF0C\>\<#5BF9\>\<#4EFB\>\<#610F\>\<#4E0E\><math|n>\<#4E92\>\<#7D20\>\<#7684\><math|b>\<#FF0C\>\<#90FD\>\<#6709\>\<#FF1A\>

    <\equation*>
      b<rsup|n-1>\<equiv\>1 <around*|(|mod n|)>
    </equation*>

    \<#5C06\><math|n>\<#5206\>\<#89E3\>\<#4E3A\>

    <\equation*>
      p<rsub|1><rsup|k<rsub|1>>\<ldots\>p<rsub|i><rsup|k<rsub|i>>\<ldots\>p<rsub|t><rsup|k<rsub|t>>
    </equation*>

    \<#6211\>\<#4EEC\>\<#6709\>\<#FF1A\>

    <\equation*>
      b<rsup|n-1>\<equiv\>1 <around*|(|mod p<rsub|i><rsup|k<rsub|i>>|)>
    </equation*>

    \<#6240\>\<#4EE5\>

    <\equation*>
      Ord<rsub|p<rsub|i><rsup|k<rsub|i>>><around*|(|b|)><mid|\|>n-1
    </equation*>

    \<#7531\>\<#539F\>\<#6839\>\<#7684\>\<#5B58\>\<#5728\>\<#6027\>\<#FF0C\>\<#5BF9\>\<#4EFB\>\<#610F\>\<#7684\><math|i>\<#5B58\>\<#5728\>\<#4E00\>\<#4E2A\><math|p<rsub|i><rsup|k<rsub|i>>>\<#4E0E\><math|>\<#4E92\>\<#7D20\>\<#7684\><math|b<rsub|i>>\<#FF0C\>\<#4F7F\>\<#5F97\><math|b<rsub|i>>\<#662F\>\<#6A21\><math|><math|p<rsub|i><rsup|k<rsub|i>>>\<#7684\>\<#539F\>\<#6839\>\<#3002\>

    \<#4EFB\>\<#53D6\><math|b<rsub|1>\<ldots\>b<rsub|j>\<ldots\>b<rsub|n><around*|(|j\<neq\>i|)>>\<#FF0C\>\<#4F7F\>\<#5F97\><math|b<rsub|j>>\<#4E0E\><math|p<rsub|i><rsup|k<rsub|i>>>\<#4E92\>\<#7D20\>\<#FF0C\>\<#90A3\>\<#4E48\>\<#FF0C\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|b>|<cell|\<equiv\>>|<cell|b<rsub|1>
      <around*|(|mod p<rsub|1><rsup|k<rsub|1>>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|b<rsub|>>|<cell|\<equiv\>>|<cell|b<rsub|i>
      <around*|(|mod p<rsub|i><rsup|k<rsub|i>>|)>>>|<row|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|b>|<cell|\<equiv\>>|<cell|b<rsub|n>
      <around*|(|mod p<rsub|t><rsup|k<rsub|t>>|)>>>>>
    </eqnarray*>

    \<#8FD9\>\<#4E2A\>\<#65B9\>\<#7A0B\>\<#7EC4\>\<#662F\>\<#6709\>\<#89E3\>\<#7684\>\<#FF0C\>\<#4E14\>\<#5B83\>\<#7684\>\<#89E3\><math|b>\<#6EE1\>\<#8DB3\>\<#5BF9\>\<#4EFB\>\<#610F\>\<#7684\><math|p<rsub|j><rsup|k<rsub|j>>>\<#FF0C\><math|b>\<#4E0E\><math|p<rsub|j><rsup|k<rsub|j>>>\<#4E92\>\<#7D20\>\<#3002\>\<#8FD9\>\<#6837\>\<#4E00\>\<#6765\>\<#FF0C\><math|b>\<#4E0E\><math|n>\<#4E92\>\<#7D20\>\<#FF0C\>\<#4E14\>\<#FF1A\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|Ord<rsub|p<rsub|i><rsup|k<rsub|i>>><around*|(|b|)>>|<cell|=>|<cell|\<varphi\><around*|(|p<rsub|i><rsup|k<rsub|i>>|)>>>|<row|<cell|>|<cell|=>|<cell|p<rsub|i><rsup|k<rsub|i>>-p<rsub|i><rsup|k<rsub|i>-1>>>|<row|<cell|>|<cell|=>|<cell|p<rsub|i><rsup|k<rsub|i>-1><around*|(|p-1|)>>>>>
    </eqnarray*>

    \<#8FD9\>\<#4E5F\>\<#5C31\>\<#662F\>\<#8BF4\>

    <\equation*>
      p<rsub|i><rsup|k<rsub|i>-1><around*|(|p-1|)>\|n-1
    </equation*>

    \<#56E0\>\<#4E3A\><math|<around*|(|p<rsub|i><rsup|k<rsub|i>-1>,p-1|)>=1>\<#FF0C\>\<#90A3\>\<#4E48\>\<#5FC5\>\<#6709\>\<#FF1A\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<rsub|i><rsup|k<rsub|i>-1>>|<cell|\|>|<cell|n-1<eq-number>>>|<row|<cell|p<rsub|i>-1>|<cell|\|>|<cell|n-1<eq-number>>>>>
    </eqnarray*>

    \<#56E0\>\<#4E3A\><math|<around*|(|n,n-1|)>=1>\<#FF0C\>\<#5F53\><math|k<rsub|i>\<gtr\>1>\<#65F6\>
    \<#FF0C\>(1)\<#5F0F\>\<#662F\>\<#4E0D\>\<#53EF\>\<#80FD\>\<#6EE1\>\<#8DB3\>\<#7684\>\<#3002\>\<#8FD9\>\<#4E5F\>\<#4E00\>\<#6765\>\<#5C31\>\<#8BC1\>\<#660E\>\<#4E86\>\<#5145\>\<#5206\>\<#6027\>\<#3002\>

    \<#5FC5\>\<#8981\>\<#6027\>\<#FF1A\>

    \<#5982\>\<#679C\>\<#5BF9\><math|n>\<#7684\>\<#6BCF\>\<#4E00\>\<#4E2A\>\<#7D20\>\<#56E0\>\<#5B50\><math|p>\<#90FD\>\<#6709\>\<#FF1A\>

    <\equation*>
      p<rsup|2>\<nmid\>n
    </equation*>

    \<#90A3\>\<#4E48\><math|n>\<#5FC5\>\<#5B9A\>\<#662F\>\<#7D20\>\<#6570\>\<#4E00\>\<#6B21\>\<#65B9\>\<#7684\>\<#4E58\>\<#79EF\>\<#FF0C\>\<#4E5F\>\<#5C31\>\<#662F\>\<#FF1A\>

    <\equation*>
      n=p<rsub|1>p<rsub|2>p<rsub|3>\<ldots\>p<rsub|t>
    </equation*>

    \<#7531\>\<#4E8E\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|p<rsub|i>-1>|<cell|\|>|<cell|n-1>>|<row|<cell|\<varphi\><around*|(|p|)>>|<cell|=>|<cell|p<rsub|i>-1>>|<row|<cell|Ord<rsub|p><around*|(|b|)>>|<cell|\|>|<cell|\<varphi\><around*|(|p<rsub|i>|)>>>>>
    </eqnarray*>

    \<#6240\>\<#4EE5\>

    <\equation*>
      Ord<rsub|p<rsub|i>><around*|(|b|)>\|n-1
    </equation*>

    \<#6240\>\<#4EE5\>

    <\equation*>
      b<rsup|n-1>\<equiv\>1<around*|(|mod p<rsub|i>|)>
    </equation*>

    \<#5BF9\>\<#4EFB\>\<#610F\>\<#4E0E\><math|n>\<#4E92\>\<#8D28\>\<#7684\><math|b>\<#3001\>\<#4EFB\>\<#610F\><math|1\<leqslant\>i\<leqslant\>t>\<#6210\>\<#7ACB\>\<#FF0C\>\<#8FD9\>\<#6837\>\<#4E00\>\<#6765\>

    <\equation*>
      b<rsup|n-1>\<equiv\>1 <around*|(|mod n|)>
    </equation*>

    \<#8BC1\>\<#660E\>\<#4E86\>\<#5FC5\>\<#8981\>\<#6027\>\<#3002\>
  </proof>

  \<#6839\>\<#636E\>\<#8FD9\>\<#4E2A\>\<#5B9A\>\<#7406\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#8BC1\>\<#660E\><math|2821=7\<times\>13\<times\>31>\<#662F\>Carmichael\<#6570\>\<#FF1A\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|6>|<cell|\|>|<cell|2820>>|<row|<cell|12>|<cell|\|>|<cell|2820>>|<row|<cell|30>|<cell|\|>|<cell|2820>>>>
  </eqnarray*>

  <section*|(10)>

  \<#9996\>\<#5148\>\<#FF0C\>

  <\equation*>
    1373653=829\<times\>1657
  </equation*>

  \<#8FD9\>\<#662F\>\<#4E00\>\<#4E2A\>\<#5408\>\<#6570\>\<#3002\>

  \<#7136\>\<#540E\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#6709\>\<#FF1A\>

  <\equation*>
    1373652=2<rsup|2>\<times\>343413
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|2<rsup|2\<times\>343413>>|<cell|\<equiv\>>|<cell|-1
    <around*|(|mod 1373652|)>>>|<row|<cell|3<rsup|343413>>|<cell|\<equiv\>>|<cell|1
    <around*|(|mod 1373652|)>>>>>
  </eqnarray*>

  \<#8FD9\>\<#4E5F\>\<#5C31\>\<#662F\>\<#8BF4\>\<#FF0C\>1373653\<#662F\>\<#57FA\><math|2>\<#548C\><math|3>\<#7684\>\<#5F3A\>\<#4F2A\>\<#7D20\>\<#6570\>\<#3002\>

  <section*|(13)>

  <subsection*|(i)>

  \<#6CE8\>\<#610F\>\<#5230\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|n-1>|<cell|=>|<cell|<around*|(|6 m+1|)>
    <around*|(|12 m +1|)> <around*|(|18 m
    +1|)>-1>>|<row|<cell|>|<cell|=>|<cell|36 m+396 m<rsup|2>+1296
    m<rsup|3>>>>>
  </eqnarray*>

  \<#56E0\>\<#4E3A\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|6 m>|<cell|\|>|<cell|36 m+396 m<rsup|2>+1296
    m<rsup|3>>>|<row|<cell|12 m>|<cell|\|>|<cell|36 m+396 m<rsup|2>+1296
    m<rsup|3>>>|<row|<cell|18 m>|<cell|\|>|<cell|36 m+396 m<rsup|2>+1296
    m<rsup|3>>>>>
  </eqnarray*>

  \<#6240\>\<#4EE5\>\<#6839\>\<#636E\>Korselt\<#5B9A\>\<#7406\>\<#FF0C\>\<#8FD9\>\<#4E2A\>\<#6570\>\<#662F\>Carmichael\<#6570\>\<#3002\>

  <subsection*|(ii)>

  <subsubsection|>

  <\equation*>
    1729=7\<times\>13\<times\>19
  </equation*>

  \<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#8FD9\>\<#662F\>(i)\<#4E2D\><math|m=1>\<#7684\>\<#60C5\>\<#51B5\>

  <subsubsection|>

  <\equation*>
    294409=37\<times\>73\<times\>109
  </equation*>

  \<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#8FD9\>\<#662F\>(i)\<#4E2D\><math|m=6>\<#7684\>\<#60C5\>\<#51B5\>

  <subsubsection|>

  <\equation*>
    55164051=211\<times\>421\<times\>621
  </equation*>

  \<#4E0D\>\<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#56E0\>\<#4E3A\>

  <\equation*>
    210\<nmid\>55164050
  </equation*>

  <subsubsection|>

  <\equation*>
    118901521=271\<times\>541\<times\>811
  </equation*>

  \<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#8FD9\>\<#662F\>(i)\<#4E2D\><math|m=45>\<#7684\>\<#60C5\>\<#51B5\>

  <subsubsection|>

  \<#8FD9\>\<#9053\>\<#9898\>\<#9898\>\<#76EE\>\<#4F3C\>\<#4E4E\>\<#6709\>\<#8BEF\>\<#FF0C\>\<#5E94\>\<#8BE5\>\<#4E3A\>\<#FF1A\>

  <\equation*>
    172947529=307\<times\>613\<times\>919
  </equation*>

  \<#662F\>Carmichael\<#6570\>\<#FF0C\>\<#56E0\>\<#4E3A\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|306>|<cell|\|>|<cell|172947528>>|<row|<cell|612>|<cell|\|>|<cell|172947528>>|<row|<cell|918>|<cell|\|>|<cell|172947528>>>>
  </eqnarray*>

  <section*|(14)>

  \<#9996\>\<#5148\>\<#FF0C\>

  <\equation*>
    561=3\<times\>11\<times\>17
  </equation*>

  \<#7136\>\<#540E\>\<#6C42\>\<#5F97\>\<#FF1A\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|<around*|(|<frac|2|561>|)>>|<cell|=>|<cell|<around*|(|<frac|2|3>|)>*<around*|(|<frac|2|11>|)>*<around*|(|<frac|2|17>|)>>>|<row|<cell|>|<cell|=>|<cell|-1\<times\>-1*\<times\>1>>|<row|<cell|>|<cell|=>|<cell|1>>>>
  </eqnarray*>

  \<#8FD9\>\<#8BF4\>\<#660E\>\<#FF0C\>561\<#662F\>\<#57FA\><math|2>\<#7684\>Euler\<#4F2A\>\<#7D20\>\<#6570\>\<#3002\>

  <section*|(19)>

  \<#9996\>\<#5148\>

  <\equation*>
    25326001=2251\<times\>11251
  </equation*>

  \<#8FD9\>\<#8BF4\>\<#660E\>\<#5B83\>\<#662F\>\<#5408\>\<#6570\>\<#3002\>

  \<#7136\>\<#540E\>\<#FF0C\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|25326000>|<cell|=>|<cell|2<rsup|2>\<times\>1582875>>|<row|<cell|2<rsup|1582875>>|<cell|\<equiv\>>|<cell|-1
    <around*|(|mod 25326001|)>>>|<row|<cell|3<rsup|1582875>>|<cell|\<equiv\>>|<cell|-1
    <around*|(|mod 25326001|)>>>|<row|<cell|5<rsup|1582875>>|<cell|\<equiv\>>|<cell|1
    <around*|(|mod 25326001|)>>>>>
  </eqnarray*>

  \<#8FD9\>\<#8BF4\>\<#660E\>\<#FF0C\>25326001\<#662F\>\<#57FA\>2\<#FF0C\>3\<#FF0C\>5\<#7684\>\<#5F3A\>\<#4F2A\>\<#7D20\>\<#6570\>\<#3002\>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-10|<tuple|4|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-11|<tuple|5|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-12|<tuple|5|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-13|<tuple|5|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-2|<tuple|?|1|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-3|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-4|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-5|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-6|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-7|<tuple|1|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-8|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
    <associate|auto-9|<tuple|3|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(3)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(6)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>