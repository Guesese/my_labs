(* ::Package:: *)

BeginPackage["MatrixNorms`"];

Norm1::usage = "Norm1[A] \:0432\:044b\:0447\:0438\:0441\:043b\:044f\:0435\:0442 1-\:043d\:043e\:0440\:043c\:0443 \:043c\:0430\:0442\:0440\:0438\:0446\:044b A.";
Norm2::usage = "Norm2[A] \:0432\:044b\:0447\:0438\:0441\:043b\:044f\:0435\:0442 2-\:043d\:043e\:0440\:043c\:0443 (\:0441\:043f\:0435\:043a\:0442\:0440\:0430\:043b\:044c\:043d\:0443\:044e) \:043c\:0430\:0442\:0440\:0438\:0446\:044b A.";
NormInfinity::usage = "NormInfinity[A] \:0432\:044b\:0447\:0438\:0441\:043b\:044f\:0435\:0442 \:0431\:0435\:0441\:043a\:043e\:043d\:0435\:0447\:043d\:0443\:044e \:043d\:043e\:0440\:043c\:0443 \:043c\:0430\:0442\:0440\:0438\:0446\:044b A.";

Begin["`Private`"];

Norm1[A_?MatrixQ] := Max[Map[Total[Abs[#]] &, Transpose[A]]];

Norm2[A_?MatrixQ] := Max[SingularValueList[N[A]]];

NormInfinity[A_?MatrixQ] := Max[Map[Total[Abs[#]] &, A]];

End[];
EndPackage[];


Notebook[{}]
