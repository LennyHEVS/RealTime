#include <assert.h>
#include "trace/trace.h"
#include "xf/eventstatus.h"
#include "main.h"
#include "gui.h"
#include "sig-gen/pwmgenerator.h"
#include "oscilloscopecontroller.h"
#include "app/factory.h"

namespace oscilloscope {

Controller * Controller::_pInstance(nullptr);

const TDivOption Controller::_tdivOptions[] = {{TDIV_500us, "500 us / div"},
                                               {TDIV_1ms,     "1 ms / div"},
                                               {TDIV_2ms,     "2 ms / div"},
                                               {TDIV_5ms,     "5 ms / div"},
                                               {TDIV_10ms,   "10 ms / div"}};

Controller::Controller() :
    _pGui(nullptr),
    _adcValuesBuffer(nullptr),
	_adcValuesBufferSize(0),
	_tdivValue(TDIV_1ms)
{
    assert(!_pInstance);    // Only one instance of this class allowed!
    _pInstance = this;
}

//static
Controller & Controller::getInstance()
{
    assert(_pInstance);     // Create first an instance!
    return *_pInstance;
}

void Controller::initialize(Gui & gui, uint16_t * adcValuesBuffer, uint32_t adcValuesBufferSize)
{
    _pGui = &gui;
    _adcValuesBuffer = adcValuesBuffer;
    _adcValuesBufferSize = adcValuesBufferSize;

    gui.registerObserver(this);     // Get notified about GUI events
}

void Controller::start()
{
    startBehavior();
}

XFEventStatus Controller::processEvent()
{
    assert(_adcValuesBuffer);
    assert(_adcValuesBufferSize > 0);

	if (getCurrentEvent()->getEventType() == XFEvent::Initial)
	{
		scheduleTimeout(TIMEOUT_ID, TIMEOUT_INTERVAL);

		doShowAnalogSignal();
	}

	if (getCurrentEvent()->getEventType() == XFEvent::Timeout &&
		getCurrentTimeout()->getId() == TIMEOUT_ID)
	{
		scheduleTimeout(TIMEOUT_ID, TIMEOUT_INTERVAL);

		doShowAnalogSignal();
	}

	return XFEventStatus::Consumed;
}

void Controller::onButtonTimePlusPressed()
{
    if (_tdivValue < (TDIV_MAX - 1))
    {
        _tdivValue = (TDivValue)(_tdivValue + 1);

        gui().setTimeDivisionText(getText(_tdivValue));
    }
}

void Controller::onButtonTimeMinusPressed()
{
    if (_tdivValue > (TDIV_MIN + 1))
    {
        _tdivValue = (TDivValue)(_tdivValue - 1);

        gui().setTimeDivisionText(getText(_tdivValue));
    }
}

void Controller::doShowAnalogSignal()
{
    // TODO: Call gui().drawGraphPoints() with the appropriate data.
	uint16_t nSamples = 0;
	float scale = 448;
	switch(_tdivValue)
	{
		case TDIV_500us:
			nSamples = ADC_VALUES_BUFFER_SIZE/20;
			scale = (float)scale/nSamples;
			break;
		case TDIV_1ms:
			nSamples = ADC_VALUES_BUFFER_SIZE/10;
			scale = (float)scale/nSamples;
			break;
		case TDIV_2ms:
			nSamples = ADC_VALUES_BUFFER_SIZE/5;
			scale = (float)scale/nSamples;
			break;
		case TDIV_5ms:
			nSamples = ADC_VALUES_BUFFER_SIZE/2;
			scale = (float)scale/nSamples;
			break;
		case TDIV_10ms:
			nSamples = ADC_VALUES_BUFFER_SIZE;
			scale = (float)scale/nSamples;
			break;
		default:
			nSamples = 0;
			scale = 1;
			break;
	}

	gui().drawGraphPoints(_adcValuesBuffer,nSamples,scale);
}

std::string Controller::getText(TDivValue tdivValue)
{
    const uint32_t count = sizeof(_tdivOptions)/sizeof(_tdivOptions[0]);

    for (uint32_t i = 0; i < count; i++)
    {
        if (_tdivOptions[i].tdivValue == tdivValue)
        {
            return _tdivOptions[i].text;
        }
    }
    return "n/a";
}

}   // namespace oscilloscope
