include <greenhouse_sens_kiban.scad>
include <greenhouse_sens_kibanbase.scad>
include <greenhouse_sens_covertop.scad>
include <greenhouse_sens_undershell.scad>
include <greenhouse_sens_bottom.scad>
$fn = 90;
translate ([0,0,100]) cover_top();
translate ([0-72/2,-48/2,80]) kiban();
translate ([0,0,50])kibanbase();
translate ([0,0,10])undershell();
translate ([0,0,-15]) sens_bottom();
