# neuroexo-labview-backend

The code in this repository represents the backend software for the NeuroExo: a Brain-controlled Upper-Limb Robot-Assisted Rehabilitation Device for Stroke Survivors. Please see the project website (http://neuroexo.com/) and the related publication ["Design and Validation of a Low-Cost Mobile EEG-Based Brain–Computer Interface"](https://www.mdpi.com/1424-8220/23/13/5930) for more information.

The NeuroExo system includes a custom Brain Computer Interface, custom headset, custom EEG amplifier, a tablet for display purposes, and a robot-assisted rehabilitation device. All processing is accomplished over a BeagleBone Black - Wireless (BBB) with LabVIEW. 

As the processing is done over a BBB, rather than an NI-produced board, many LabVIEW functions are not available. For this reason, the LabVIEW Hobbyist Toolkit is needed (originally the LabVIEW LINX toolkit). One of the major hurdles when moving to the BeagleBone was that we could not use LabVIEW's machine learning modules (needed to train an SVM for EEG signal classification). This repository includes a custom SVM LabVIEW library that has training, testing, and optimization SubVI's.

The EEG amplifier was built in-house using a ADS1299 chip from Texas Instruments, so I've included the amplifier communication SubVI's in case future researchers are employing the ADS1299.

We communicate with a robot-assisted rehabilitation device (https://hroboticsus.com/smart-rehab-devices/rebless) over wifi and control the position of the arm with feedback from the robot's current readout. This will be specific to any IOT device, so most device-specific code is included within the Arm_setup and Protocol SubVI's.

The entire system is displayed over an Amazon Fire tablet. To do this through LabVIEW, you must create a web service and broadcast global variables from the Global 1.vi to the vi.s in 'Web Service Globals', which interfaces with a javascript/html frontend. The frontend files are not included with this repository as I did not develop the frontend software.

The main.vi file, which also needs to be included in the LabVIEW web service 'Web Resources' section, provides the VI for the overall system. The system architecture is built for a frontend with different web pages, so the case structure provides LabVIEW code for each web page individually.

Please cite the following if you are able to make use of this code:

Craik, Alexander, et al. "Design and Validation of a Low-Cost Mobile EEG-Based Brain–Computer Interface." Sensors 23.13 (2023): 5930.
