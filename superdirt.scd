// Audio interface setting

(
s.options.sampleRate = 96000;
s.options.numBuffers = 8192;
s.options.numWireBufs = 128;
s.options.memSize = 8192 * 64; 
s.options.maxNodes = 65536;
s.options.maxSynthDefs = 32768;
s.options.numInputBusChannels  = 18;      
s.options.numOutputBusChannels = 10;   
s.options.outDevice_("ASIO : Focusrite USB ASIO");
s.options.inDevice_("ASIO : Focusrite USB ASIO");
)

// 2 Channel SuperDirt

(
s.waitForBoot {
    "Server booted successfully.".postln;

    ~dirt = SuperDirt(2, s);
    ~dirt.loadSoundFiles;

    s.sync; // Wait for samples to load
    
    ~dirt.start(57120, 2); // port, orbits 
    ~dirt.orbits[0].outBus = 6;  // Route to DAW
};
)
