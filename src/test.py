import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_my_design(dut):
	dut._log.info("start")
	dut.IN.value = 0b11001100
	dut._log.info("input set")
	await Timer(5, units="ps")
	dut._log.info("timer done, check output")
	dut._log.info(dut.OUT.value)
	assert dut.OUT.value == 0b11000000
	await Timer(1, units="ms")
	dut.IN.value = 0b00110110
	await Timer(1, units="ms")
	assert dut.OUT.value == 0b00110000
	#await Timer(1, units="ms")	
	#dut.IN.value = 0b01111010
	#await Timer(1, units="ms")
	#assert dut.OUT.value == 0b11110000
