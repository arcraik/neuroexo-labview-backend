<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="BeagleBone Black" Type="BeagleBone Black">
		<Property Name="alias.name" Type="Str">BeagleBone Black</Property>
		<Property Name="alias.value" Type="Str">192.168.0.110</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;LINX_DEVICE,True;LINX_DEVICE_FAMILY,6;LINX_DEVICE_ID,1;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/home/lvuser/natinst/bin/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">true</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path"></Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="SubVI_Filter_EEG_Debug.vi" Type="VI" URL="../SubVI_Filter_EEG_Debug.vi"/>
		<Item Name="Global 1.vi" Type="VI" URL="../Global 1.vi"/>
		<Item Name="SubVI_Amplifier_Setup_EEG_Acc.vi" Type="VI" URL="../SubVI_Amplifier_Setup_EEG_Acc.vi"/>
		<Item Name="SubVI_Amplifier_Setup_Impedances.vi" Type="VI" URL="../SubVI_Amplifier_Setup_Impedances.vi"/>
		<Item Name="SubVI_Arm_Setup.vi" Type="VI" URL="../SubVI_Arm_Setup.vi"/>
		<Item Name="SubVI_Broadcast_Acc_Data.vi" Type="VI" URL="../SubVI_Broadcast_Acc_Data.vi"/>
		<Item Name="SubVI_Close_TCP_Connection.vi" Type="VI" URL="../SubVI_Close_TCP_Connection.vi"/>
		<Item Name="SubVI_Collect_User_History.vi" Type="VI" URL="../SubVI_Collect_User_History.vi"/>
		<Item Name="SubVI_Convert_Impedances.vi" Type="VI" URL="../SubVI_Convert_Impedances.vi"/>
		<Item Name="SubVI_Debug_Arm.vi" Type="VI" URL="../SubVI_Debug_Arm.vi"/>
		<Item Name="SubVI_Downsample_EEG.vi" Type="VI" URL="../SubVI_Downsample_EEG.vi"/>
		<Item Name="SubVI_Downsample_EEG_Debug.vi" Type="VI" URL="../SubVI_Downsample_EEG_Debug.vi"/>
		<Item Name="SubVI_Downsample_EEG_for_Test.vi" Type="VI" URL="../SubVI_Downsample_EEG_for_Test.vi"/>
		<Item Name="SubVI_Files_to_epochs.vi" Type="VI" URL="../SubVI_Files_to_epochs.vi"/>
		<Item Name="SubVI_Filter_EEG.vi" Type="VI" URL="../SubVI_Filter_EEG.vi"/>
		<Item Name="SubVI_Filter_Impedances.vi" Type="VI" URL="../SubVI_Filter_Impedances.vi"/>
		<Item Name="SubVI_Gain_Conversion.vi" Type="VI" URL="../SubVI_Gain_Conversion.vi"/>
		<Item Name="SubVI_Grab_Optimal_Model_params.vi" Type="VI" URL="../SubVI_Grab_Optimal_Model_params.vi"/>
		<Item Name="SubVI_Grab_Target_Level_Mode.vi" Type="VI" URL="../SubVI_Grab_Target_Level_Mode.vi"/>
		<Item Name="SubVI_HInf.vi" Type="VI" URL="../SubVI_HInf.vi"/>
		<Item Name="SubVI_Interpolate_EEG.vi" Type="VI" URL="../SubVI_Interpolate_EEG.vi"/>
		<Item Name="SubVI_Interpolate_Impedances.vi" Type="VI" URL="../SubVI_Interpolate_Impedances.vi"/>
		<Item Name="SubVI_Open_Optimal_Model.vi" Type="VI" URL="../SubVI_Open_Optimal_Model.vi"/>
		<Item Name="SubVI_Open_Save_Folder.vi" Type="VI" URL="../SubVI_Open_Save_Folder.vi"/>
		<Item Name="SubVI_Predict_on_Window.vi" Type="VI" URL="../SubVI_Predict_on_Window.vi"/>
		<Item Name="SubVI_Protocol_Calibration.vi" Type="VI" URL="../SubVI_Protocol_Calibration.vi"/>
		<Item Name="SubVI_Protocol_Testing.vi" Type="VI" URL="../SubVI_Protocol_Testing.vi"/>
		<Item Name="SubVI_Read_Write_EEG.vi" Type="VI" URL="../SubVI_Read_Write_EEG.vi"/>
		<Item Name="SubVI_Read_Write_EEG_Acc.vi" Type="VI" URL="../SubVI_Read_Write_EEG_Acc.vi"/>
		<Item Name="SubVI_Read_Write_Impedances.vi" Type="VI" URL="../SubVI_Read_Write_Impedances.vi"/>
		<Item Name="SubVI_Save_Calibration_Data.vi" Type="VI" URL="../SubVI_Save_Calibration_Data.vi"/>
		<Item Name="SubVI_Save_Impedances_Settings.vi" Type="VI" URL="../SubVI_Save_Impedances_Settings.vi"/>
		<Item Name="SubVI_Save_Optimal_Model.vi" Type="VI" URL="../SubVI_Save_Optimal_Model.vi"/>
		<Item Name="SubVI_Save_Survey.vi" Type="VI" URL="../SubVI_Save_Survey.vi"/>
		<Item Name="SubVI_Save_Testing_Data.vi" Type="VI" URL="../SubVI_Save_Testing_Data.vi"/>
		<Item Name="SubVI_Send_Impedance_Values.vi" Type="VI" URL="../SubVI_Send_Impedance_Values.vi"/>
		<Item Name="SubVI_Spatial_Mean.vi" Type="VI" URL="../SubVI_Spatial_Mean.vi"/>
		<Item Name="SubVI_Train_SVM.vi" Type="VI" URL="../SubVI_Train_SVM.vi"/>
		<Item Name="SubVI_Search_Split_String.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/SubVI_Search_Split_String.vi"/>
		<Item Name="Test_Amp_EEG_Acc_2.vi" Type="VI" URL="../Test_Amp_EEG_Acc_2.vi"/>
		<Item Name="Test_PSD.vi" Type="VI" URL="../Test_PSD.vi"/>
		<Item Name="SubVI_SVM_gridsearch_n_fold.vi" Type="VI" URL="../SubVI_SVM_gridsearch_n_fold.vi"/>
		<Item Name="SubVI_SVM_test_Craik.vi" Type="VI" URL="../SubVI_SVM_test_Craik.vi"/>
		<Item Name="SubVI_SVM_train_Craik.vi" Type="VI" URL="../SubVI_SVM_train_Craik.vi"/>
		<Item Name="SubVI_SVM_Confusion_Matrix.vi" Type="VI" URL="../SubVI_SVM_Confusion_Matrix.vi"/>
		<Item Name="SubVI_TCP_NoDelay_Linux.vi" Type="VI" URL="../SubVI_TCP_NoDelay_Linux.vi"/>
		<Item Name="SubVI_SVM_Features.vi" Type="VI" URL="../SubVI_SVM_Features.vi"/>
		<Item Name="SubVI_SVM_E_calculation.vi" Type="VI" URL="../SubVI_SVM_E_calculation.vi"/>
		<Item Name="SubVI_SVM_Gaussian_Kernel.vi" Type="VI" URL="../SubVI_SVM_Gaussian_Kernel.vi"/>
		<Item Name="SubVI_SVM_Linear Kernel.vi" Type="VI" URL="../SubVI_SVM_Linear Kernel.vi"/>
		<Item Name="Test_Robotic_Arm_Current_Control.vi" Type="VI" URL="../Test_Robotic_Arm_Current_Control.vi"/>
		<Item Name="SubVI_Filter_EEG_NotLossy.vi" Type="VI" URL="../SubVI_Filter_EEG_NotLossy.vi"/>
		<Item Name="SubVI_Downsample_EEG_NotLossy.vi" Type="VI" URL="../SubVI_Downsample_EEG_NotLossy.vi"/>
		<Item Name="Utilities_Read_Files.vi" Type="VI" URL="../Utilities_Read_Files.vi"/>
		<Item Name="SubVI_Save_Calibration_Data_rev2.vi" Type="VI" URL="../SubVI_Save_Calibration_Data_rev2.vi"/>
		<Item Name="SubVI_SVM_Features_no_Maha.vi" Type="VI" URL="../SubVI_SVM_Features_no_Maha.vi"/>
		<Item Name="SubVI_Files_to_epochs_rev2.vi" Type="VI" URL="../SubVI_Files_to_epochs_rev2.vi"/>
		<Item Name="SubVI_Downsample_EEG_rev2.vi" Type="VI" URL="../SubVI_Downsample_EEG_rev2.vi"/>
		<Item Name="Utilities_Remove_TDMS_Files.vi" Type="VI" URL="../Utilities_Remove_TDMS_Files.vi"/>
		<Item Name="SubVI_Set_37_arm.vi" Type="VI" URL="../SubVI_Set_37_arm.vi"/>
		<Item Name="SubVI_Set_47_arm.vi" Type="VI" URL="../SubVI_Set_47_arm.vi"/>
		<Item Name="SubVI_Protocol_Calibration_Rev2.vi" Type="VI" URL="../SubVI_Protocol_Calibration_Rev2.vi"/>
		<Item Name="SubVI_HighPassFilter.vi" Type="VI" URL="../SubVI_HighPassFilter.vi"/>
		<Item Name="SubVI_Remove_Outliers.vi" Type="VI" URL="../SubVI_Remove_Outliers.vi"/>
		<Item Name="Utilities_Startup_Folder_Setup.vi" Type="VI" URL="../Utilities_Startup_Folder_Setup.vi"/>
		<Item Name="ws" Type="Web Service">
			<Property Name="Bld_buildSpecName" Type="Str"></Property>
			<Property Name="Bld_version.build" Type="Int">124</Property>
			<Property Name="ws.autoIncrementVersion" Type="Bool">true</Property>
			<Property Name="ws.disconnectInline" Type="Bool">true</Property>
			<Property Name="ws.disconnectTypeDefs" Type="Bool">false</Property>
			<Property Name="ws.guid" Type="Str">{E0B755A1-9B14-4048-B219-B92CCBEDEA41}</Property>
			<Property Name="ws.modifyLibraryFile" Type="Bool">true</Property>
			<Property Name="ws.privilege_role_map_size" Type="Int">0</Property>
			<Property Name="ws.public_folder_name" Type="Str">www</Property>
			<Property Name="ws.remoteDebugging" Type="Bool">false</Property>
			<Property Name="ws.removeLibraryItems" Type="Bool">true</Property>
			<Property Name="ws.removePolyVIs" Type="Bool">true</Property>
			<Property Name="ws.serveDefaultDoc" Type="Bool">true</Property>
			<Property Name="ws.SSE2" Type="Bool">true</Property>
			<Property Name="ws.static_permissions" Type="Str"></Property>
			<Property Name="ws.version.build" Type="Int">124</Property>
			<Property Name="ws.version.fix" Type="Int">0</Property>
			<Property Name="ws.version.major" Type="Int">1</Property>
			<Property Name="ws.version.minor" Type="Int">0</Property>
			<Item Name="Public Content" Type="Folder" URL="../www">
				<Property Name="NI.DISK" Type="Bool">true</Property>
			</Item>
			<Item Name="Startup VIs" Type="Startup VIs Container"/>
			<Item Name="Web Resources" Type="HTTP WebResources Container">
				<Item Name="bt.vi" Type="VI" URL="../bt.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="eeg.vi" Type="VI" URL="../eeg.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="index.vi" Type="VI" URL="../index.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="main2.vi" Type="VI" URL="../main2.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="s.vi" Type="VI" URL="../s.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="settings.vi" Type="VI" URL="../settings.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="stop.vi" Type="VI" URL="../stop.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
				<Item Name="svm.vi" Type="VI" URL="../svm.vi">
					<Property Name="ws.buffered" Type="Bool">true</Property>
					<Property Name="ws.includeNameInURL" Type="Bool">true</Property>
					<Property Name="ws.keepInMemory" Type="Bool">true</Property>
					<Property Name="ws.loadAtStartup" Type="Bool">true</Property>
					<Property Name="ws.method" Type="Int">1</Property>
					<Property Name="ws.outputFormat" Type="Int">4</Property>
					<Property Name="ws.outputType" Type="Int">0</Property>
					<Property Name="ws.permissions" Type="Str"></Property>
					<Property Name="ws.requireAPIKey" Type="Bool">false</Property>
					<Property Name="ws.requiredPrivilege" Type="Str"></Property>
					<Property Name="ws.type" Type="Int">1</Property>
					<Property Name="ws.uri" Type="Str"></Property>
					<Property Name="ws.useHeaders" Type="Bool">true</Property>
					<Property Name="ws.useStandardURL" Type="Bool">true</Property>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="liblinxdevice.dll" Type="Document" URL="/&lt;vilib&gt;/MakerHub/LINX/Resources/liblinxdevice.dll"/>
				<Item Name="LMH-LINX.lvlib" Type="Library" URL="/&lt;vilib&gt;/MakerHub/LINX/LMH-LINX.lvlib"/>
				<Item Name="LMH-Toolbox.lvlib" Type="Library" URL="/&lt;vilib&gt;/MakerHub/Toolbox/LMH-Toolbox.lvlib"/>
				<Item Name="Lossy Behavior.ctl" Type="VI" URL="/&lt;vilib&gt;/ChannelSupport/Lossy Behavior.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="NI_WebServices.lvlib" Type="Library" URL="/&lt;vilib&gt;/wsapi/NI_WebServices.lvlib"/>
				<Item Name="Random Number (Range) DBL.vi" Type="VI" URL="/&lt;vilib&gt;/numeric/Random Number (Range) DBL.vi"/>
				<Item Name="Random Number (Range) I64.vi" Type="VI" URL="/&lt;vilib&gt;/numeric/Random Number (Range) I64.vi"/>
				<Item Name="Random Number (Range) U64.vi" Type="VI" URL="/&lt;vilib&gt;/numeric/Random Number (Range) U64.vi"/>
				<Item Name="Random Number (Range).vi" Type="VI" URL="/&lt;vilib&gt;/numeric/Random Number (Range).vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="sub_Random U32.vi" Type="VI" URL="/&lt;vilib&gt;/numeric/sub_Random U32.vi"/>
				<Item Name="TCP Get Raw Net Object.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Get Raw Net Object.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Sort 2D Array - Push Stack.vi" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array - Push Stack.vi"/>
				<Item Name="Sort 2D Array - Pop Stack.vi" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array - Pop Stack.vi"/>
				<Item Name="Assert Block Data Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Block Data Type.vim"/>
				<Item Name="Sort 2D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array.vim"/>
			</Item>
			<Item Name="_ChannelSupport.lvlib" Type="Library" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/_ChannelSupport.lvlib"/>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="libc.so.6" Type="Document" URL="libc.so.6">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Lossy Stream-a[.,.](dbl).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Lossy Stream-a[.,.](dbl).lvlib"/>
			<Item Name="Lossy Stream-a[.](dbl).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Lossy Stream-a[.](dbl).lvlib"/>
			<Item Name="Lossy Stream-a[.](u8).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Lossy Stream-a[.](u8).lvlib"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="PipeLogic.lvclass" Type="LVClass" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/PipeLogic/PipeLogic.lvclass"/>
			<Item Name="ProbeFormatting.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/ProbeFormatting.vi"/>
			<Item Name="Stream-a[.,.](dbl).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Stream-a[.,.](dbl).lvlib"/>
			<Item Name="Stream-a[.](dbl).lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Stream-a[.](dbl).lvlib"/>
			<Item Name="Stream.lvlib" Type="Library" URL="/&lt;resource&gt;/Channels/Stream/Stream.lvlib"/>
			<Item Name="Update Probe Details String.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/Update Probe Details String.vi"/>
			<Item Name="ws_runtime.dll" Type="Document" URL="ws_runtime.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FINAL (9-9 flexion in training)" Type="{117D6E82-86E4-4435-99C8-B638EE47B29E}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7EA684A9-486B-4CD1-AF93-8146D1669B88}</Property>
				<Property Name="App_INI_GUID" Type="Str">{23171513-4301-4BC9-8CDD-41E2652C376C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8001</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="App_webService.count" Type="Int">1</Property>
				<Property Name="App_webService[0].itemID" Type="Ref">/BeagleBone Black/ws</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8D21288E-8D5F-40A7-811D-BC88C31279FC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FINAL (9-9 flexion in training)</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/FINAL (9-9 flexion in training)</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{28A35961-3D51-4325-B9E1-6C94F4981FED}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">startup.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/startup.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{A6703577-967D-49CD-A103-5CB6E69B006A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/BeagleBone Black/ws/Public Content</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/bt.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/eeg.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/index.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/main2.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/s.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/settings.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/stop.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/svm.vi</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
				<Property Name="TgtF_companyName" Type="Str">University of Houston</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FINAL (9-9 flexion in training)</Property>
				<Property Name="TgtF_internalName" Type="Str">FINAL (9-9 flexion in training)</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 University of Houston</Property>
				<Property Name="TgtF_productName" Type="Str">FINAL (9-9 flexion in training)</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8F275EDD-6448-4A0A-A80D-C84704FBA385}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">startup.rtexe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="FINAL (fixed stopping param) 9-26" Type="{117D6E82-86E4-4435-99C8-B638EE47B29E}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E2F443CF-8423-4AC5-B0D0-DEF258009C5F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E428658D-1E94-43E9-8D3B-01953346BBAB}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8001</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="App_webService.count" Type="Int">1</Property>
				<Property Name="App_webService[0].itemID" Type="Ref">/BeagleBone Black/ws</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2B0B8D53-7806-4E7A-87C1-D4F945944D3D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FINAL (fixed stopping param) 9-26</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/FINAL (fixed stopping param) 9-26</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{14471180-807F-4CD3-B037-890B5308AAAB}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">startup.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/startup.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D727B194-5246-4079-8090-1D567A69DBD7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/BeagleBone Black/ws/Public Content</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/bt.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/eeg.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/index.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/main2.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/s.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/settings.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/stop.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/BeagleBone Black/ws/Web Resources/svm.vi</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
				<Property Name="TgtF_companyName" Type="Str">University of Houston</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FINAL (fixed stopping param) 9-26</Property>
				<Property Name="TgtF_internalName" Type="Str">FINAL (fixed stopping param) 9-26</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 University of Houston</Property>
				<Property Name="TgtF_productName" Type="Str">FINAL (fixed stopping param) 9-26</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{8C2761C4-38AF-43ED-9859-91FBDFB6A8F5}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">startup.rtexe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
