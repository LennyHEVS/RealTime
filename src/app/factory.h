#ifndef APP_FACTORY_H
#define APP_FACTORY_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "main.h"
#include "oscilloscopecontroller.h"
#include "gui.h"
#include "mdw/sig-gen/pwmgenerator.h"
#include "mdw/ext-freqgen/frequencygenerator.h"
#include "app/freqgencontroller.h"
#include "board/buttonscontroller.h"
using external::FrequencyGenerator;

/**
 * @brief Factory creating all objects/components and relations between them.
 */
class Factory
{
public:
    Factory();                          ///< Constructor

    static void initialize();           ///< Initializes the factory
    static void build();                ///< Creates components and initializes relations

    static oscilloscope::Controller & getOscilloscopeController();
    static oscilloscope::Gui & getGui();
    static ButtonsController& getButtonsController();
    static FrequencyGenerator& getFrequencyGenerator();
    static oscilloscope::FreqGenController& getFreqGenController();

#define ADC_VALUES_BUFFER_SIZE 8000

    static uint16_t adcValuesBuffer[ADC_VALUES_BUFFER_SIZE];

#if defined(ENABLE_SIGGEN_PWMGENERATOR) && (ENABLE_SIGGEN_PWMGENERATOR != 0)
    static siggen::PwmGenerator & pwmGenerator();       ///< PWM signal generator
#endif // ENABLE_SIGGEN_PWMGENERATOR

protected:

    static oscilloscope::Controller _oscilloscopeController;
    static oscilloscope::Gui _gui;
    static external::FrequencyGenerator _fgen;
    static oscilloscope::FreqGenController _fgenctrl;
    static ButtonsController _bc;
};

#endif // __cplusplus

//
// What is seen by the C and C++ compiler
//
#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void Factory_initialize();
void Factory_build();

#ifdef __cplusplus
}
#endif // __cplusplus
#endif // APP_FACTORY_H
