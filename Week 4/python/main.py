import os
"""
# ================================ Linux ================================
# Run create_original_image_bram.py to create bram contain image data
os.system('python3 ../python/create_original_image_bram.py')

# Add library
os.system('vlib work')

# Compile verilog project
os.system('vlog ../Modelsim/BRAM.v ../Modelsim/BRAM_Store_Data.v ../Modelsim/Calculate_Result.v ../Modelsim/Data_Path.v ../Modelsim/Controller.v ../Modelsim/Convert_RGB_To_Gray_Scale.v ../Modelsim/TestBench_Convert_RGB_To_Gray_Scale.v')

# Run simulation
os.system('vsim -c -do "run -all" TestBench_Convert_RGB_To_Gray_Scale')

# Restore image from bram and compare the result between verilog project and python project
os.system('python3 ../python/recovery_image_and_compare.py')
"""

# ================================ Window ================================
# Run create_original_image_bram.py to create bram contain image data
os.system('python ../python/create_original_image_bram.py')

# Add library
os.system('vlib work')

# Compile verilog project
os.system('vlog ../Modelsim/BRAM.v ../Modelsim/BRAM_Store_Data.v ../Modelsim/Calculate_Result.v ../Modelsim/Data_Path.v ../Modelsim/Controller.v ../Modelsim/Convert_RGB_To_Gray_Scale.v ../Modelsim/TestBench_Convert_RGB_To_Gray_Scale.v')

# Run simulation
os.system('vsim -c -do "run -all" TestBench_Convert_RGB_To_Gray_Scale')

# Restore image from bram and compare the result between verilog project and python project
os.system('python ../python/recovery_image_and_compare.py')
