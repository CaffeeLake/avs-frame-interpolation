SetFilterMTMode("DEFAULT_MT_MODE", MT_NICE_FILTER)
SetFilterMTMode("LSMASHVideoSource", MT_SERIALIZED)
SetFilterMTMode("LSMASHAudioSource", MT_SERIALIZED)
SetFilterMTMode("LWLibavVideoSource", MT_SERIALIZED)
SetFilterMTMode("LWLibavAudioSource", MT_SERIALIZED)
SetFilterMTMode("FFVideoSource", MT_SERIALIZED)
SetFilterMTMode("FFAudioSource", MT_SERIALIZED)
SetFilterMTMode("FFIndex", MT_SERIALIZED)
SetFilterMTMode("AVCSource", MT_SERIALIZED)
SetFilterMTMode("MPEG2Source", MT_SERIALIZED)
SetFilterMTMode("DirectShowSource", MT_SERIALIZED)
SetFilterMTMode("MSuper", MT_MULTI_INSTANCE)
SetFilterMTMode("MAnalyse", MT_MULTI_INSTANCE)
SetFilterMTMode("MRecalculate", MT_MULTI_INSTANCE)
SetFilterMTMode("MBlockFps", MT_MULTI_INSTANCE)
FFVideoSource("source.m2ts")
# Spline36Resize(1920, 1080)
# ConvertToYV12()
# AssumeFPS(30000, 1001)
# AssumeTFF()
# AssumeBFF()
# super = MSuper(hpad = 0, vpad = 0, pel = 1, levels = 0, chroma = true, sharp = 1, rfilter = 2)
# backward_1 = MAnalyse(super, blksize = 8, blksizev = 8, levels = 0, search = 3, searchparam = 2, isb = true, chroma = false, plevel = 2, badrange = (-24))
# forward_1 = MAnalyse(super, blksize = 8, blksizev = 8, levels = 0, search = 3, searchparam = 2, isb = false, chroma = false, plevel = 2, badrange = (-24))
# backward_2 = MRecalculate(super, backward_1, blksize = 4, blksizev = 4, search = 3, searchparam = 1, chroma = false, smooth = 1)
# forward_2 = MRecalculate(super, forward_1, blksize = 4, blksizev = 4, search = 3, searchparam = 1, chroma = false, smooth = 1)
# MBlockFps(super, backward_2, forward_2, num = 60000, den = 1001, mode = 2, ml = 100, blend = true)
Prefetch(4)
Return Last
