#!/usr/bin/env wolframscript
Conj[x_, y_, a_] := Equal[Mod[x, a], Mod[y, a]]

EulerPre[x_, y_] := Conj[y^((x - 1)/2), 1, x]
EulerPreNot[x_, y_] := Conj[y^((x - 1)/2), -1, x]

AllQuadRes[x_] := Select[Range[x], Function[y, EulerPre[x, y]]]
AllNotQuadRes[x_] := Select[Range[x], Function[y, EulerPreNot[x, y]]]

Print[AllQuadRes[13]]
Print[AllNotQuadRes[13]]
Print[AllQuadRes[23]]
Print[AllNotQuadRes[23]]
Print[AllQuadRes[31]]
Print[AllNotQuadRes[31]]
Print[AllQuadRes[37]]
Print[AllNotQuadRes[37]]
Print[AllQuadRes[47]]
Print[AllNotQuadRes[47]]

Print[FactorInteger[1155]]
Print[FactorInteger[401]]

Print[
Table[
  Table[
    Table[
      ChineseRemainder[{i, j, 0, k}, {3,5,7,11}],
      {i, {-1, 1}}],
    {j, {-1, 1}}],
  {k, {4, -4}}]]

Print[EulerPre[67,-2]]

