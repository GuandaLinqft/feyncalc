(* ::Package:: *)

(* :Title: GenerateModelEulerHeisenberg									*)

(*
	This software is covered by the GNU General Public License 3.
	Copyright (C) 1990-2020 Rolf Mertig
	Copyright (C) 1997-2020 Frederik Orellana
	Copyright (C) 2014-2020 Vladyslav Shtabovenko
*)

(* :Summary:  Generates FeynArts model for the Euler-Heisenberg Lagrangian *)

(* ------------------------------------------------------------------------ *)



(* ::Section:: *)
(*Euler-Heisenberg Lagrangian model for FeynArts*)


(* ::Subsection:: *)
(*Load FeynRules*)


FR$Parallel=False;
$FeynRulesPath=SetDirectory[$UserBaseDirectory<>"/Applications/FeynRules"];
<<FeynRules`;


(* ::Subsection:: *)
(*Load FeynRules model*)


frModelPath=FileNameJoin[{$UserBaseDirectory,"Applications","FeynCalc","Examples","FeynRules","EulerHeisenberg","EulerHeisenberg.fr"}];
LoadModel[frModelPath];


(* ::Subsection:: *)
(*Create FeynArts model*)


SetDirectory[FileNameJoin[{$UserBaseDirectory,"Applications","FeynCalc","FeynArts","Models"}]];
WriteFeynArtsOutput[LEH,Output->"EulerHeisenberg",CouplingRename->False];



