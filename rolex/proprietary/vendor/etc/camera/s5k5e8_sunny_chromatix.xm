<!--
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
-->

<!--
CommonChromatixInfo:
    CommonChromatixInfo is the information about chromatix needed for
        various use cases.
    Ex:- Preview, Snapshot, ZSL, HFR, HDR, Video, Liveshot for ISP, CPP,
        3A and SW PostProc.
    Entries in this node are common for all sensor modes.

ResolutionChromatixInfo:
    ResolutionChromatixInfo is the information about chromatix needed for
        various use cases.
    Ex:- Preview, Snapshot, ZSL, HFR, HDR, Video, Liveshot for ISP, CPP,
        3A and SW PostProc.
    Entries in this node are specific to sensor resolution.

ChromatixName:
    Contains the list of chromatix names for all modules.
    special_mode_mask:
        It is the bit mask for special modes, which is used for
            chromatix selection.
        Special modes can be any mode that needs a special chromatix.
        Ex:- scene mode, DZOOM mode, OIS capture mode, flash mode
        This is applicable for CommonChromatixInfo and
            ResolutionChromatixInfo.
        special_mode_mask="0" means none of the special modes are
            selected.
    sensor_resolution_index:
        It is the sensor resolution index for which chromatix libraries
            will be choosen.
        It is applicable only in ResolutionChromatixInfo.

ISPCommon :
    Common tuning library name for ISP
ISPPreview :
    Preview tuning library name for ISP
ISPSnapshot :
    Snapshot tuning library name for ISP
CPPCommon :
    Common tuning library name for CPP
CPPPreview :
    Preview tuning library name for CPP
CPPSnapshot :
    Snapshot tuning library name for CPP
CPPLiveshot :
    Liveshot tuning library name for CPP
PostProc :
    Tuning library name for postproc module
A3Preview :
    Preview tuning library for 3A
A3Video :
    Video tuning library for 3A

Order of Resolution Pick:
    Assume the current sensor mode is "r" and special mode mask is "s".
    Chromatix for a module and type is choosen in this order till we find a
        valid chroamtix file name or else NULL is returned.
    1) From ResolutionChromatixInfo node for which sensor_resolution_index
        is "r" and special_mode_mask is "s".
    2) From CommonChromatixInfo node for which special_mode_mask is "s".
    3) From ResolutionChromatixInfo node for which sensor_resolution_index
        is "r" and special_mode_mask is "0".
    4) From CommonChromatixInfo node for which special_mode_mask is "0".
    5) NULL is returned if we dont find in any of the above cases.

special_mode_mask values:
    SENSOR_SPECIAL_MODE_NONE = 0,
    SENSOR_SPECIAL_MODE_FLASH = 1,
    SENSOR_SPECIAL_MODE_ZOOM_UPSCALE = 2,
    SENSOR_SPECIAL_MODE_ZOOM_DOWNSCALE = 4,
    SENSOR_SPECIAL_MODE_OIS_CAPTURE = 8,
-->

<ChromatixConfigurationRoot>
  <CommonChromatixInfo>
    <ChromatixName special_mode_mask="0">
      <ISPCommon>s5k5e8_sunny_common</ISPCommon>
      <PostProc>s5k5e8_sunny_postproc</PostProc>
    </ChromatixName>
  </CommonChromatixInfo>
  <ResolutionChromatixInfo>
    <ChromatixName sensor_resolution_index="0" special_mode_mask="0">
      <ISPPreview>s5k5e8_sunny_snapshot</ISPPreview>
      <ISPSnapshot>s5k5e8_sunny_snapshot</ISPSnapshot>
      <ISPVideo>s5k5e8_sunny_snapshot</ISPVideo>
      <CPPPreview>s5k5e8_sunny_cpp_preview</CPPPreview>
      <CPPSnapshot>s5k5e8_sunny_cpp_snapshot</CPPSnapshot>
      <CPPVideo>s5k5e8_sunny_cpp_video</CPPVideo>
      <CPPLiveshot>s5k5e8_sunny_cpp_liveshot</CPPLiveshot>
      <A3Preview>s5k5e8_sunny_zsl_preview_3a</A3Preview>
      <A3Video>s5k5e8_sunny_zsl_video_3a</A3Video>
    </ChromatixName>
    <ChromatixName sensor_resolution_index="1" special_mode_mask="0">
      <ISPPreview>s5k5e8_sunny_snapshot</ISPPreview>
      <ISPSnapshot>s5k5e8_sunny_snapshot</ISPSnapshot>
      <ISPVideo>s5k5e8_sunny_snapshot</ISPVideo>
      <CPPPreview>s5k5e8_sunny_cpp_preview</CPPPreview>
      <CPPSnapshot>s5k5e8_sunny_cpp_snapshot</CPPSnapshot>
      <CPPVideo>s5k5e8_sunny_cpp_video</CPPVideo>
      <CPPLiveshot>s5k5e8_sunny_cpp_liveshot</CPPLiveshot>
      <A3Preview>s5k5e8_sunny_default_preview_3a</A3Preview>
      <A3Video>s5k5e8_sunny_default_video_3a</A3Video>
    </ChromatixName>
    <ChromatixName sensor_resolution_index="2" special_mode_mask="0">
      <ISPPreview>s5k5e8_sunny_hfr_60</ISPPreview>
      <ISPSnapshot>s5k5e8_sunny_hfr_60</ISPSnapshot>
      <ISPVideo>s5k5e8_sunny_hfr_60</ISPVideo>
      <CPPPreview>s5k5e8_sunny_cpp_hfr_60</CPPPreview>
      <CPPSnapshot>s5k5e8_sunny_cpp_hfr_60</CPPSnapshot>
      <CPPVideo>s5k5e8_sunny_cpp_hfr_60</CPPVideo>
      <CPPLiveshot>s5k5e8_sunny_cpp_hfr_60</CPPLiveshot>
      <A3Preview>s5k5e8_sunny_hfr_60_3a</A3Preview>
      <A3Video>s5k5e8_sunny_hfr_60_3a</A3Video>
    </ChromatixName>
    <ChromatixName sensor_resolution_index="3" special_mode_mask="0">
      <ISPPreview>s5k5e8_sunny_hfr_90</ISPPreview>
      <ISPSnapshot>s5k5e8_sunny_hfr_90</ISPSnapshot>
      <ISPVideo>s5k5e8_sunny_hfr_90</ISPVideo>
      <CPPPreview>s5k5e8_sunny_cpp_hfr_90</CPPPreview>
      <CPPSnapshot>s5k5e8_sunny_cpp_hfr_90</CPPSnapshot>
      <CPPVideo>s5k5e8_sunny_cpp_hfr_90</CPPVideo>
      <CPPLiveshot>s5k5e8_sunny_cpp_hfr_90</CPPLiveshot>
      <A3Preview>s5k5e8_sunny_hfr_90_3a</A3Preview>
      <A3Video>s5k5e8_sunny_hfr_90_3a</A3Video>
    </ChromatixName>
    <ChromatixName sensor_resolution_index="4" special_mode_mask="0">
      <ISPPreview>s5k5e8_sunny_hfr_120</ISPPreview>
      <ISPSnapshot>s5k5e8_sunny_hfr_120</ISPSnapshot>
      <ISPVideo>s5k5e8_sunny_hfr_120</ISPVideo>
      <CPPPreview>s5k5e8_sunny_cpp_hfr_120</CPPPreview>
      <CPPSnapshot>s5k5e8_sunny_cpp_hfr_120</CPPSnapshot>
      <CPPVideo>s5k5e8_sunny_cpp_hfr_120</CPPVideo>
      <CPPLiveshot>s5k5e8_sunny_cpp_hfr_120</CPPLiveshot>
      <A3Preview>s5k5e8_sunny_hfr_120_3a</A3Preview>
      <A3Video>s5k5e8_sunny_hfr_120_3a</A3Video>
    </ChromatixName>
  </ResolutionChromatixInfo>
</ChromatixConfigurationRoot>
