/* This files provides address values that exist in the system */

#define BOARD                       "DE10-Nano"

/* Memory */
#define DDR_BASE                    0x00000000
#define DDR_END                     0x3FFFFFFF
#define A9_ONCHIP_BASE              0xFFFF0000
#define A9_ONCHIP_END               0xFFFFFFFF
#define FPGA_ONCHIP_SRAM_BASE       0xC0000000
#define FPGA_ONCHIP_SRAM_END        0xC0007FFF
#define FPGA_2ND_ONCHIP_SRAM_BASE   0xC0010000
#define FPGA_2ND_ONCHIP_SRAM_END    0xC0017FFF
#define FPGA_PIXEL_BUF_BASE         0xC8000000
#define FPGA_PIXEL_BUF_END          0xC8007fff
#define FPGA_CHAR_BASE              0xC9000000
#define FPGA_CHAR_END               0xC9001FFF

/* Cyclone V FPGA devices */
#define LED_BASE                    0xFF200000
#define SW_BASE                     0xFF200040
#define KEY_BASE                    0xFF200050
#define JP1_BASE                    0xFF200060
#define JP7_BASE                    0xFF200070
#define JTAG_UART_BASE              0xFF201000
#define JTAG_UART_2_BASE            0xFF201008
#define TIMER_BASE                  0xFF202000
#define TIMER_2_BASE                0xFF202020
#define RGB_RESAMPLER_BASE          0xFF203010
#define PIXEL_BUF_CTRL_BASE         0xFF203020
#define ADC_BASE                    0xFF204000
#define ARDUINO_GPIO_BASE           0xFF200100
#define ARDUINO_RESET_N             0xFF200110

/* Cyclone V HPS devices */
#define HPS_GPIO1_BASE              0xFF709000
#define I2C0_BASE                   0xFFC04000
#define I2C1_BASE                   0xFFC05000
#define I2C2_BASE                   0xFFC06000
#define I2C3_BASE                   0xFFC07000
#define HPS_TIMER0_BASE             0xFFC08000
#define HPS_TIMER1_BASE             0xFFC09000
#define HPS_TIMER2_BASE             0xFFD00000
#define HPS_TIMER3_BASE             0xFFD01000
#define FPGA_BRIDGE                 0xFFD0501C

/* ARM A9 MPCORE devices */
#define   PERIPH_BASE               0xFFFEC000    // base address of peripheral devices
#define   MPCORE_PRIV_TIMER         0xFFFEC600    // PERIPH_BASE + 0x0600

/* Interrupt controller (GIC) CPU interface(s) */
#define MPCORE_GIC_CPUIF            0xFFFEC100    // PERIPH_BASE + 0x100
#define ICCICR                      0x00          // offset to CPU interface control reg
#define ICCPMR                      0x04          // offset to interrupt priority mask reg
#define ICCIAR                      0x0C          // offset to interrupt acknowledge reg
#define ICCEOIR                     0x10          // offset to end of interrupt reg
/* Interrupt controller (GIC) distributor interface(s) */
#define MPCORE_GIC_DIST             0xFFFED000    // PERIPH_BASE + 0x1000
#define ICDDCR                      0x00          // offset to distributor control reg
#define ICDISER                     0x100         // offset to interrupt set-enable regs
#define ICDICER                     0x180         // offset to interrupt clear-enable regs
#define ICDIPTR                     0x800         // offset to interrupt processor targets regs
#define ICDICFR                     0xC00         // offset to interrupt configuration regs

/* Needed for DE1-SoC program compatibility */
#define LEDR_BASE                   0xFF200000
