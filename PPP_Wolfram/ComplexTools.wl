(* ::Package:: *)

BeginPackage["ComplexTools`"];

ComplexToCartesian::usage = "ComplexToCartesian[zlist] \:043f\:0440\:0435\:043e\:0431\:0440\:0430\:0437\:0443\:0435\:0442 \:0441\:043f\:0438\:0441\:043e\:043a \:043a\:043e\:043c\:043f\:043b\:0435\:043a\:0441\:043d\:044b\:0445 \:0447\:0438\:0441\:0435\:043b \:0432 \:0441\:043f\:0438\:0441\:043e\:043a \:043f\:0430\:0440 {Re, Im}.";
ListComplexPlot::usage = "ListComplexPlot[zlist] \:0438\:0437\:043e\:0431\:0440\:0430\:0436\:0430\:0435\:0442 \:0441\:043f\:0438\:0441\:043e\:043a \:043a\:043e\:043c\:043f\:043b\:0435\:043a\:0441\:043d\:044b\:0445 \:0447\:0438\:0441\:0435\:043b \:043d\:0430 \:043a\:043e\:043c\:043f\:043b\:0435\:043a\:0441\:043d\:043e\:0439 \:043f\:043b\:043e\:0441\:043a\:043e\:0441\:0442\:0438.";
EigenPlot::usage = "EigenPlot[mat] \:0438\:0437\:043e\:0431\:0440\:0430\:0436\:0430\:0435\:0442 \:0441\:043e\:0431\:0441\:0442\:0432\:0435\:043d\:043d\:044b\:0435 \:0437\:043d\:0430\:0447\:0435\:043d\:0438\:044f (\:0441\:043f\:0435\:043a\:0442\:0440) \:043c\:0430\:0442\:0440\:0438\:0446\:044b \:043d\:0430 \:043a\:043e\:043c\:043f\:043b\:0435\:043a\:0441\:043d\:043e\:0439 \:043f\:043b\:043e\:0441\:043a\:043e\:0441\:0442\:0438.";

Begin["`Private`"];

ComplexToCartesian[zlist_List] := Map[{Re[#], Im[#]} &, zlist];

ListComplexPlot[zlist_List] := ListPlot[
  ComplexToCartesian[zlist],
  PlotStyle -> {Red, PointSize[Large]},
  AxesLabel -> {"Re", "Im"},
  GridLines -> Automatic
];

EigenPlot[mat_?MatrixQ] := ListComplexPlot[Eigenvalues[mat]];

End[];
EndPackage[];


Notebook[{}]
