include <greenhouse_sens_kiban.scad>
include <greenhouse_sens_kibanbase.scad>
include <greenhouse_sens_covertop.scad>
include <greenhouse_sens_coverfly.scad>
include <greenhouse_sens_undershell.scad>
include <greenhouse_sens_bottom.scad>
$fn = 90;
translate ([0,0,59]) cover_fly();
translate ([0,0,41]) cover_fly();
translate ([0,0,25]) cover_top();
rotate ([0,0,45]) translate ([-72/2,-48/2,35]) kiban();
translate ([0,0,30]) kibanbase();
undershell();
sens_bottom();