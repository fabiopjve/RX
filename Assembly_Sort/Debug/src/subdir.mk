################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
SRC_SRCS += \
..\src/asm_sort.src 

C_SRCS += \
..\src/Sort.c \
..\src/dbsct.c \
..\src/interrupt_handlers.c \
..\src/reset_program.c \
..\src/sbrk.c \
..\src/vector_table.c 

C_DEPS += \
./src/Sort.d \
./src/dbsct.d \
./src/interrupt_handlers.d \
./src/reset_program.d \
./src/sbrk.d \
./src/vector_table.d 

SRC_DEPS += \
./src/asm_sort.d 

OBJS += \
./src/Sort.obj \
./src/asm_sort.obj \
./src/dbsct.obj \
./src/interrupt_handlers.obj \
./src/reset_program.obj \
./src/sbrk.obj \
./src/vector_table.obj 


# Each subdirectory must supply rules for building sources it contributes
src/%.obj: ../src/%.c
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Compiler'
	ccrx  -MM -MP -output=dep="$(@:%.obj=%.d)" -MT="$(@:%.obj=%.obj)" -MT="$(@:%.obj=%.d)" -lang=c   -include="C:\PROGRA~1\Renesas\RX\2_6_0/include"  -debug -nomessage -isa=rxv1 -patch=rx610 -fpu -alias=noansi -nologo  -define=__RX   "$<"
	ccrx -lang=c -output=obj="$(@:%.d=%.obj)"  -include="C:\PROGRA~1\Renesas\RX\2_6_0/include"  -debug -nomessage -isa=rxv1 -patch=rx610 -fpu -alias=noansi -nologo  -define=__RX   "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

src/%.obj: ../src/%.src src/src.sub
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Assembler'
	asrx  -MM -MP -MF="$(@:%.obj=%.d)" -MT="$(@:%.obj=%.obj)" -MT="$(@:%.obj=%.d)"  -nolistfile -isa=rxv1 -patch=rx610 -debug -fpu -nologo   "$<"
	asrx -output="$(@:%.d=%.obj)" -nolistfile -isa=rxv1 -patch=rx610 -debug -fpu -nologo   "$<"
	@echo 'Finished scanning and building: $<'
	@echo.

