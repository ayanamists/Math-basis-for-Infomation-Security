<TeXmacs|1.99.12>

<style|<tuple|generic|chinese>>

<\body>
  <doc-data|<doc-title|\<#4FE1\>\<#606F\>\<#5B89\>\<#5168\>\<#6570\>\<#5B66\>\<#57FA\>\<#7840\>
  \<#7B2C\>\<#4E94\>\<#6B21\>\<#4F5C\>\<#4E1A\>>|<doc-author|<author-data|<author-name|1834087
  \<#674E\>\<#6668\>\<#66E6\>>>>>

  <section*|(2)>

  \<#4F7F\>\<#7528\>\<#679A\>\<#4E3E\>\<#6CD5\>\<#FF0C\>\<#7F16\>\<#5199\>\<#7A0B\>\<#5E8F\>\<#8BA1\>\<#7B97\>\<#FF1A\>

  <\scm-code>
    (#%require math/number-theory)

    \;

    (define (find-ord x p)

    \ \ (define (iter i)

    \ \ \ \ (if (= (modular-expt x i p) 1)

    \ \ \ \ \ \ \ \ i

    \ \ \ \ \ \ \ \ (iter (+ i 1))))

    \ \ (iter 1))

    \;

    (find-ord 3 19)

    (find-ord 7 19)

    (find-ord 10 19)
  </scm-code>

  \<#5F97\>\<#5230\>\<#7ED3\>\<#679C\>\<#FF1A\>

  <\eqnarray*>
    <tformat|<table|<row|<cell|ord<rsub|19>
    <around*|(|3|)>>|<cell|=>|<cell|18>>|<row|<cell|ord<rsub|19>
    <around*|(|7|)>>|<cell|=>|<cell|3>>|<row|<cell|ord<rsub|19>
    <around*|(|10|)>>|<cell|=>|<cell|18>>>>
  </eqnarray*>

  <subsection*|(3)>

  \<#9996\>\<#5148\>\<#679A\>\<#4E3E\>\<#51FA\>\<#6700\>\<#5C0F\>\<#539F\>\<#6839\>\<#FF1A\>

  <\scm-code>
    (define (find-smallest-root p)

    \ \ (define (iter i)

    \ \ \ \ (if (= (find-ord i p) (totient p))

    \ \ \ \ \ \ \ \ i

    \ \ \ \ \ \ \ \ (iter (+ i 1))))

    \ \ (iter 2))
  </scm-code>

  \<#7136\>\<#540E\>\<#7528\><math|<around*|{|s<rsup|i>|}>>\<#679A\>\<#4E3E\>\<#51FA\>\<#6240\>\<#6709\>\<#7684\>\<#539F\>\<#6839\>\<#FF1A\>

  <\scm-code>
    (define (all-root p)

    \ \ (define s (find-smallest-root p))

    \ \ (define (iter i)

    \ \ \ \ (if (\<gtr\> i (totient p))

    \ \ \ \ \ \ \ \ '()

    \ \ \ \ \ \ \ \ (if (coprime? i (totient p))

    \ \ \ \ \ \ \ \ \ \ \ \ (cons (modular-expt s i p) (iter (+ i 1)))

    \ \ \ \ \ \ \ \ \ \ \ \ (iter (+ i 1)))))

    \ \ (iter 1))
  </scm-code>

  \<#5BF9\>\<#8FD9\>\<#4E2A\>\<#95EE\>\<#9898\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#4F7F\>\<#7528\>\<#FF1A\>

  <\scm-code>
    (all-root 81)
  </scm-code>

  \<#5F97\>\<#5230\>\<#FF1A\>

  <\scm-code>
    (2 32 47 23 11 14 56 5 20 77 65 68 29 59 74 50 38 41)
  </scm-code>

  \<#6A21\>81\<#7684\>\<#539F\>\<#6839\>\<#5373\>\<#4E3A\>\<#4E0A\>\<#9762\>\<#5217\>\<#8868\>\<#4E2D\>\<#7684\>\<#6570\>\<#3002\>

  <section*|(6)>

  \<#9996\>\<#5148\>\<#6C42\>\<#5F97\>\<#FF1A\>

  <\equation*>
    \<varphi\> <around*|(|59|)>=58
  </equation*>

  \<#7136\>\<#540E\>\<#FF0C\>\<#6A21\><math|59>\<#7684\>\<#539F\>\<#6839\>\<#7684\>\<#4E2A\>\<#6570\>\<#4E3A\>\<#FF1A\>

  <\equation*>
    \<varphi\> <around*|(|\<varphi\> <around*|(|59|)>|)>=28
  </equation*>

  \<#7528\>\<#521A\>\<#624D\>\<#7684\>\<#7A0B\>\<#5E8F\>\<#6C42\>\<#5F97\>\<#6240\>\<#6709\>\<#7684\>\<#539F\>\<#6839\>\<#4E3A\>\<#FF1A\>

  <\scm-code>
    (2 8 32 10 40 42 50 23 33 14 56 47 11 44 55 43 54 39 38 34 18 13 52 31 6
    24 37 30)
  </scm-code>

  <section*|(8)>

  \ \<#5982\>\<#679C\>\<#6A21\><math|n>\<#6709\>\<#539F\>\<#6839\>\<#FF0C\>\<#5219\>\<#5B58\>\<#5728\>\<#FF1B\>\<#5982\>\<#679C\>\<#6A21\><math|n>\<#6CA1\>\<#6709\>\<#539F\>\<#6839\>\<#FF0C\>\<#5219\>\<#4E0D\>\<#4E00\>\<#5B9A\>\<#5B58\>\<#5728\>\<#3002\>

  <\proof>
    \;

    \<#9996\>\<#5148\>\<#8BC1\>\<#660E\>\<#5982\>\<#679C\><math|n>\<#6709\>\<#539F\>\<#6839\>\<#FF0C\>\<#5219\>\<#5B58\>\<#5728\>\<#6574\>\<#6570\><math|a>\<#4F7F\>\<#5F97\><math|ord<rsub|n>
    <around*|(|a|)>=d>\<#FF1A\>

    \<#5BF9\>\<#4E8E\><math|\<varphi\> <around*|(|n|)>>\<#7684\>\<#4EFB\>\<#610F\>\<#6B63\>\<#56E0\>\<#5B50\><math|d>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53D6\><math|k=<frac|\<phi\>
    <around*|(|n|)>|d>>\<#FF0C\>

    \<#8FD9\>\<#6837\>\<#4E00\>\<#6765\>\<#FF0C\>\<#4EFB\>\<#53D6\>\<#4E00\>\<#4E2A\>\<#6A21\><math|n>\<#7684\>\<#539F\>\<#6839\><math|r>\<#FF0C\>\<#6709\>\<#FF1A\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|ord<rsub|n>
      <around*|(|r<rsup|k>|)>>|<cell|=>|<cell|<frac|ord<rsub|n>
      <around*|(|r|)>|<around*|(|ord<rsub|n>
      <around*|(|r|)>,k|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varphi\>
      <around*|(|n|)>|<around*|(|\<varphi\>
      <around*|(|n|)>,k|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varphi\>
      <around*|(|n|)>|<frac|\<varphi\> <around*|(|n|)>|d>>>>|<row|<cell|>|<cell|=>|<cell|d>>>>
    </eqnarray*>

    \<#6545\><math|r<rsup|k>\<#5373\>\<#662F\>\<#8981\>\<#627E\>\<#7684\>a>.

    \<#7136\>\<#540E\>\<#8BC1\>\<#660E\>\<#5982\>\<#679C\>\<#6A21\><math|n>\<#6CA1\>\<#6709\>\<#539F\>\<#6839\>\<#FF0C\>\<#5219\>\<#4E0D\>\<#4E00\>\<#5B9A\>\<#5B58\>\<#5728\>\<#6574\>\<#6570\><math|a>\<#4F7F\>\<#5F97\><math|ord<rsub|n>
    <around*|(|a|)>=d>\<#FF1A\>

    \<#5982\>\<#679C\>\<#4EE4\><math|d=\<phi\>
    <around*|(|n|)>>\<#FF0C\>\<#7531\>\<#4E8E\>\<#4E0D\>\<#5B58\>\<#5728\>\<#539F\>\<#6839\>\<#FF0C\>\<#6240\>\<#4EE5\>\<#4E0D\>\<#5B58\>\<#5728\>\<#8FD9\>\<#6837\>\<#7684\><math|a>\<#FF1B\>

    \<#4EE4\><math|d=2>\<#FF0C\>\<#5219\>\<#6709\>\<#FF1A\><math|ord<rsub|n>
    <around*|(|n-1|)>=d>.

    \<#6240\>\<#4EE5\>\<#FF0C\>\<#4E0D\>\<#4E00\>\<#5B9A\>\<#5B58\>\<#5728\>\<#6574\>\<#6570\><math|a>\<#FF0C\>\<#4F7F\>\<#5F97\><math|ord<rsub|n>
    <around*|(|a|)>=d>.
  </proof>

  <section*|(9)>

  \<#663E\>\<#7136\>\<#5730\>\<#FF0C\>

  <\equation>
    a<rsup|n>\<equiv\>1 <around*|(|mod a<rsup|n>-1|)>
  </equation>

  \<#5F53\><math|k\<less\>n>\<#65F6\>\<#FF1A\>

  <\equation*>
    0\<less\>a<rsup|k>\<less\>a<rsup|n>-1
  </equation*>

  \<#4E14\>

  <\equation*>
    a<rsup|k>\<neq\>1
  </equation*>

  \<#6240\>\<#4EE5\>

  <\equation>
    a<rsup|k>\<nequiv\>1 <around*|(|mod a<rsup|n>-1|)>
  </equation>

  \<#7EFC\>\<#5408\>(1)(2)\<#FF0C\>\<#6211\>\<#4EEC\>\<#6709\>\<#FF1A\>

  <\equation*>
    ord<rsub|n> <around*|(|a|)>=n
  </equation*>

  \<#81EA\>\<#7136\>\<#5730\>\<#FF0C\>

  <\equation*>
    n\<barsuchthat\>\<varphi\><around*|(|m|)>
  </equation*>

  <section*|(17)>

  <math|41>\<#662F\>\<#8D28\>\<#6570\>\<#FF0C\>\<#5B83\>\<#4E00\>\<#5B9A\>\<#6709\>\<#539F\>\<#6839\>\<#3002\>

  \<#627E\>\<#5230\>\<#4E00\>\<#4E2A\>\<#539F\>\<#6839\><math|6>\<#FF0C\>\<#6211\>\<#4EEC\>\<#901A\>\<#8FC7\>\<#679A\>\<#4E3E\>\<#8BA1\>\<#7B97\>\<#5F97\>\<#FF1A\>

  <\equation*>
    ind<rsub|6> <around*|(|29|)>=7
  </equation*>

  \<#8FD9\>\<#6837\>\<#4E00\>\<#6765\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#5F97\>\<#5230\>\<#540C\>\<#4F59\>\<#65B9\>\<#7A0B\>\<#FF1A\>

  <\equation*>
    22 u=7 <around*|(|mod 40|)>
  </equation*>

  \<#7531\>\<#4E8E\>

  <\equation*>
    2<neg|\<barsuchthat\>>7
  </equation*>

  \<#8FD9\>\<#4E2A\>\<#65B9\>\<#7A0B\>\<#662F\>\<#65E0\>\<#89E3\>\<#7684\>\<#FF0C\>\<#6240\>\<#4EE5\>\<#539F\>\<#65B9\>\<#7A0B\>\<#4E5F\>\<#65E0\>\<#89E3\>\<#3002\>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-2|<tuple|?|1|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-3|<tuple|?|2|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-4|<tuple|?|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-5|<tuple|?|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-6|<tuple|2|?|..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(2)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|(3) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|(6)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>