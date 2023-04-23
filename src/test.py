import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_my_design(dut):
	dut._log.info("start")
	dut.IN.value = 0b11001100
	await Timer(5, units="ps")
	dut._log.info(dut.OUT.value)
	assert dut.OUT.value == 0b01010000
	dut._log.info("passed test 1")
	await Timer(1, units="ms")
	dut.IN.value = 0b00110110
	await Timer(1, units="ms")
	assert dut.OUT.value == 0b00000101
	dut._log.info("passed test 2")
	await Timer(1, units="ms")	
	dut.IN.value = 0b01111010
	await Timer(1, units="ms")
	dut._log.info(dut.OUT.value)
	assert dut.OUT.value == 0b01001000
	dut._log.info("passed test 3")
