view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 10ns -dutycycle 50 -starttime 0ns -endtime 100ns sim:/dff/CLK 
wave create -driver freeze -pattern random -initialvalue 0 -period 10ns -random_type Normal -seed 5 -starttime 0ns -endtime 100ns sim:/dff/D 
WaveCollapseAll -1
wave clipboard restore
