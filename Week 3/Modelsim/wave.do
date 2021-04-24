onerror {resume}
radix fpoint 16
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/en
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/reset_n
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/clk
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/scale_red
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/scale_green
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/scale_blue
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/out_1_bram_read
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/out_0_bram_write
add wave -noupdate -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/out_1_bram_write
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/data_a
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/data_b
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/addr_a
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/addr_b
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/we_a
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/we_b
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/ena
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/enb
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/clk
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[23]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[22]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[21]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[20]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[19]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[18]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[17]}
add wave -noupdate -expand -group BRAM_read -group Blue -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[16]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[15]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[14]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[13]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[12]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[11]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[10]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[9]}
add wave -noupdate -expand -group BRAM_read -group Green -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[8]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[7]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[6]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[5]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[4]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[3]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[2]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[1]}
add wave -noupdate -expand -group BRAM_read -group Red -radix unsigned {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[0]}
add wave -noupdate -expand -group BRAM_read -radix unsigned -childformat {{{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[23]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[22]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[21]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[20]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[19]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[18]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[17]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[16]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[15]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[14]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[13]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[12]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[11]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[10]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[9]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[8]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[7]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[6]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[5]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[4]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[3]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[2]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[1]} -radix unsigned} {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[0]} -radix unsigned}} -subitemconfig {{/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[23]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[22]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[21]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[20]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[19]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[18]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[17]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[16]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[15]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[14]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[13]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[12]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[11]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[10]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[9]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[8]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[7]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[6]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[5]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[4]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[3]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[2]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[1]} {-height 15 -radix unsigned} {/TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a[0]} {-height 15 -radix unsigned}} /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_a
add wave -noupdate -expand -group BRAM_read -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins0/q_b
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/data_in
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/scale_red
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/scale_green
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/scale_blue
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/en
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/clk
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/data_out
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/red
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/green
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/blue
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/post_scale_red
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/post_scale_green
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/post_scale_blue
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/data_out_temp_0
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/data_out_temp_1
add wave -noupdate -group Calculate_Result /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins1/data_out_temp_2
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/data_a
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/data_b
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/addr_a
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/addr_b
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/we_a
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/we_b
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/ena
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/enb
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/clk
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/q_a
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/q_b
add wave -noupdate -expand -group BRAM_write -radix unsigned /TestBench_Convert_RGB_To_Gray_Scale/ins0/ins1/ins2/file_id
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {226279839 ps} 0} {{Cursor 2} {1200239240 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 432
configure wave -valuecolwidth 156
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {237330 ps} {553771 ps}
