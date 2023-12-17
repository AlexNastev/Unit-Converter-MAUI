; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [316 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [626 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 232
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 266
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 274
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 283
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 307
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 15: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 291
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 250
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 250
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 270
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 306
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 299
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 206
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 252
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 204
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 226
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 238310064, ; 37: ru-RU\UnitsNet.resources.dll => 0xe3452b0 => 310
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 209
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 228
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 225
	i32 291076382, ; 43: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 304
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 195
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 48: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 282
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 227
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 312
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 59: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 302
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 210
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 223
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 67: System.dll => 0x1bff388e => 164
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 225
	i32 486930444, ; 69: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 238
	i32 489220957, ; 70: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 280
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 72: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 73: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 74: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 270
	i32 530272170, ; 75: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 76: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 301
	i32 539058512, ; 77: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 78: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 79: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 80: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 81: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 82: Jsr305Binding => 0x213954e7 => 263
	i32 569601784, ; 83: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 261
	i32 577335427, ; 84: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 85: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 86: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 87: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 88: Xamarin.AndroidX.CustomView => 0x2568904f => 215
	i32 627931235, ; 89: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 293
	i32 639843206, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 221
	i32 643868501, ; 91: System.Net => 0x2660a755 => 81
	i32 650002595, ; 92: UnitsNet.dll => 0x26be40a3 => 190
	i32 662205335, ; 93: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 94: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 257
	i32 666292255, ; 95: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 202
	i32 672442732, ; 96: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 97: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 98: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 99: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 272
	i32 693804605, ; 100: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 101: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 102: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 267
	i32 700358131, ; 103: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 104: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 271
	i32 722857257, ; 105: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 106: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 107: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 108: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 192
	i32 759454413, ; 109: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 110: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 111: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 112: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 299
	i32 789151979, ; 113: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 114: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 216
	i32 804715423, ; 115: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 230
	i32 823281589, ; 117: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 118: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 119: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 120: System.Net.Quic => 0x31b69d60 => 71
	i32 839477851, ; 121: nb-NO\UnitsNet.resources.dll => 0x32096a5b => 309
	i32 843511501, ; 122: Xamarin.AndroidX.Print => 0x3246f6cd => 243
	i32 869139383, ; 123: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 284
	i32 873119928, ; 124: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 125: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 126: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 127: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 298
	i32 904024072, ; 128: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 129: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 130: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 295
	i32 928116545, ; 131: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 266
	i32 952186615, ; 132: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 133: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 271
	i32 961460050, ; 134: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 288
	i32 966729478, ; 135: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 264
	i32 967690846, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 227
	i32 975236339, ; 137: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 138: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 139: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 140: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 141: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 297
	i32 992768348, ; 142: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 143: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 144: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 145: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 247
	i32 1019214401, ; 146: System.Drawing => 0x3cbffa41 => 36
	i32 1022536050, ; 147: nb-NO\UnitsNet.resources => 0x3cf2a972 => 309
	i32 1028951442, ; 148: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1031528504, ; 149: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 265
	i32 1035644815, ; 150: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 200
	i32 1036536393, ; 151: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 152: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 278
	i32 1044663988, ; 153: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 154: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 234
	i32 1058196592, ; 155: zh-CN\UnitsNet.resources => 0x3f12cc70 => 311
	i32 1067306892, ; 156: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 157: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 158: Xamarin.Kotlin.StdLib => 0x409e66d8 => 268
	i32 1098259244, ; 159: System => 0x41761b2c => 164
	i32 1108272742, ; 160: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 300
	i32 1117529484, ; 161: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 294
	i32 1118262833, ; 162: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 290
	i32 1121599056, ; 163: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 233
	i32 1127624469, ; 164: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 165: Xamarin.AndroidX.Window => 0x447dc2e6 => 260
	i32 1168523401, ; 166: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 296
	i32 1170634674, ; 167: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 256
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 241
	i32 1204270330, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 202
	i32 1208641965, ; 171: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 172: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 173: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 261
	i32 1253011324, ; 174: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 175: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 276
	i32 1264511973, ; 176: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 251
	i32 1267360935, ; 177: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 255
	i32 1273260888, ; 178: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 207
	i32 1275534314, ; 179: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 272
	i32 1278448581, ; 180: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 199
	i32 1293217323, ; 181: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 218
	i32 1308624726, ; 182: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 285
	i32 1309188875, ; 183: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 184: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 260
	i32 1324164729, ; 185: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 186: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 187: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 305
	i32 1364015309, ; 188: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 189: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 306
	i32 1376866003, ; 190: Xamarin.AndroidX.SavedState => 0x52114ed3 => 247
	i32 1379779777, ; 191: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 192: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 193: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 211
	i32 1408764838, ; 194: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 195: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 196: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 197: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 274
	i32 1434145427, ; 198: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 199: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 264
	i32 1439761251, ; 200: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 201: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 202: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 203: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 204: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 205: es\Microsoft.Maui.Controls.resources => 0x57152abe => 280
	i32 1461234159, ; 206: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 207: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 208: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 209: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 201
	i32 1470490898, ; 210: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 211: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 212: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 213: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 214: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 248
	i32 1526286932, ; 215: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 304
	i32 1536373174, ; 216: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 217: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 218: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 219: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 220: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 221: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 222: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 223: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 224: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 217
	i32 1592978981, ; 225: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 226: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 265
	i32 1601112923, ; 227: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 228: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1608915246, ; 229: fr-CA\UnitsNet.resources.dll => 0x5fe6192e => 308
	i32 1618516317, ; 230: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 231: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 237
	i32 1622358360, ; 232: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 233: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 259
	i32 1635184631, ; 234: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 221
	i32 1636350590, ; 235: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 214
	i32 1639515021, ; 236: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 237: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 238: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 239: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 240: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 253
	i32 1658251792, ; 241: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 262
	i32 1670060433, ; 242: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 209
	i32 1675553242, ; 243: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 244: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 245: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 246: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 247: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 248: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 249: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 269
	i32 1701541528, ; 250: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 230
	i32 1726116996, ; 252: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 253: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 254: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 205
	i32 1743415430, ; 255: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 275
	i32 1744735666, ; 256: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 257: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 258: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 259: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 260: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 261: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 262: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 252
	i32 1770582343, ; 263: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 264: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 265: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 266: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 267: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 291
	i32 1788241197, ; 268: Xamarin.AndroidX.Fragment => 0x6a96652d => 223
	i32 1793755602, ; 269: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 283
	i32 1808609942, ; 270: Xamarin.AndroidX.Loader => 0x6bcd3296 => 237
	i32 1813058853, ; 271: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 268
	i32 1813201214, ; 272: Xamarin.Google.Android.Material => 0x6c13413e => 262
	i32 1818569960, ; 273: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 242
	i32 1818787751, ; 274: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 275: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 276: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 277: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1847515442, ; 278: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 192
	i32 1853025655, ; 279: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 300
	i32 1858542181, ; 280: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 281: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 282: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 282
	i32 1879696579, ; 283: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 284: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 203
	i32 1888955245, ; 285: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 286: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 287: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 276
	i32 1898237753, ; 288: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 289: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1903004195, ; 290: UnitConverterApp => 0x716d8a23 => 0
	i32 1910275211, ; 291: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 292: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 293: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 287
	i32 1956758971, ; 294: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 295: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 249
	i32 1968388702, ; 296: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1969866796, ; 297: UnitConverterApp.dll => 0x7569c82c => 0
	i32 1983156543, ; 298: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 269
	i32 1985761444, ; 299: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 194
	i32 2003115576, ; 300: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 279
	i32 2011961780, ; 301: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 302: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 234
	i32 2031763787, ; 303: Xamarin.Android.Glide => 0x791a414b => 191
	i32 2045470958, ; 304: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 305: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 229
	i32 2060060697, ; 306: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 307: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 278
	i32 2070888862, ; 308: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 309: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 310: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 311: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 312: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 313: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 314: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 315: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 316: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 286
	i32 2181898931, ; 317: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 318: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 319: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 320: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 273
	i32 2201231467, ; 321: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 322: it\Microsoft.Maui.Controls.resources => 0x839595db => 288
	i32 2217644978, ; 323: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 256
	i32 2222056684, ; 324: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 325: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 238
	i32 2252106437, ; 326: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 327: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 328: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 329: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 330: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 193
	i32 2279755925, ; 331: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 245
	i32 2293034957, ; 332: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 333: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 334: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 335: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 292
	i32 2305521784, ; 336: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 337: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 197
	i32 2320631194, ; 338: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 339: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 340: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 341: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 342: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 286
	i32 2368005991, ; 343: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 344: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 345: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 346: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 347: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 287
	i32 2401565422, ; 348: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 349: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 220
	i32 2421380589, ; 350: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 351: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 207
	i32 2427813419, ; 352: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 284
	i32 2435356389, ; 353: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 354: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 355: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 356: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 357: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 358: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 210
	i32 2471841756, ; 359: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 360: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 361: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 362: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 363: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 364: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 365: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 366: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 290
	i32 2505896520, ; 367: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 232
	i32 2522472828, ; 368: Xamarin.Android.Glide.dll => 0x9659e17c => 191
	i32 2538310050, ; 369: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 370: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 285
	i32 2562349572, ; 371: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 372: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 373: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 289
	i32 2581783588, ; 374: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 233
	i32 2581819634, ; 375: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 255
	i32 2585220780, ; 376: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 377: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 378: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 379: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 294
	i32 2605712449, ; 380: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 273
	i32 2615233544, ; 381: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 224
	i32 2616218305, ; 382: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 383: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 384: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 385: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 214
	i32 2624644809, ; 386: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 219
	i32 2626831493, ; 387: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 289
	i32 2627185994, ; 388: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 389: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 390: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 228
	i32 2663391936, ; 391: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 193
	i32 2663698177, ; 392: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 393: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 394: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 395: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 396: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 397: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 398: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 253
	i32 2715334215, ; 399: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 400: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 401: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 402: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 403: Xamarin.AndroidX.Activity => 0xa2e0939b => 195
	i32 2735172069, ; 404: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 405: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 201
	i32 2740698338, ; 406: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 275
	i32 2740948882, ; 407: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 408: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 409: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 295
	i32 2758225723, ; 410: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 411: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 412: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2768457651, ; 413: PropertyChanged => 0xa5034fb3 => 189
	i32 2770495804, ; 414: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 267
	i32 2774792782, ; 415: fr-CA\UnitsNet.resources => 0xa563fa4e => 308
	i32 2778768386, ; 416: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 258
	i32 2779977773, ; 417: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 246
	i32 2785988530, ; 418: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 301
	i32 2788224221, ; 419: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 224
	i32 2801831435, ; 420: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 421: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 422: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 211
	i32 2819470561, ; 423: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 424: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 425: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 246
	i32 2824502124, ; 426: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 427: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 235
	i32 2849599387, ; 428: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 429: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 258
	i32 2855708567, ; 430: Xamarin.AndroidX.Transition => 0xaa36a797 => 254
	i32 2861098320, ; 431: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 432: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 433: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 196
	i32 2875164099, ; 434: Jsr305Binding.dll => 0xab5f85c3 => 263
	i32 2875220617, ; 435: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 436: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 222
	i32 2887636118, ; 437: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 438: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 439: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 440: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 441: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 442: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 443: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 259
	i32 2919462931, ; 444: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 445: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 198
	i32 2936416060, ; 446: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 447: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 448: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 449: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 450: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 451: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 452: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 218
	i32 2985381924, ; 453: UnitsNet => 0xb1f15024 => 190
	i32 2987532451, ; 454: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 249
	i32 2996846495, ; 455: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 231
	i32 3016983068, ; 456: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 251
	i32 3023353419, ; 457: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 458: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 226
	i32 3038032645, ; 459: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 312
	i32 3053864966, ; 460: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 281
	i32 3056245963, ; 461: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 248
	i32 3057625584, ; 462: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 239
	i32 3059408633, ; 463: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 464: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 465: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 466: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 467: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 468: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 469: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 470: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 471: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 472: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 473: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 474: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 475: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 476: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 477: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 240
	i32 3192346100, ; 478: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 479: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 480: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 481: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 482: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 217
	i32 3220365878, ; 483: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 484: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 485: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 486: Xamarin.AndroidX.CardView => 0xc235e84d => 205
	i32 3265493905, ; 487: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 488: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 489: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 490: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 491: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 492: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 493: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 494: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 495: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 281
	i32 3316684772, ; 496: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 497: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 215
	i32 3317144872, ; 498: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 499: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 203
	i32 3345895724, ; 500: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 244
	i32 3346324047, ; 501: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 241
	i32 3357674450, ; 502: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 298
	i32 3358260929, ; 503: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 504: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 196
	i32 3362522851, ; 505: Xamarin.AndroidX.Core => 0xc86c06e3 => 212
	i32 3366347497, ; 506: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 507: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 245
	i32 3381016424, ; 508: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 277
	i32 3395150330, ; 509: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 510: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 511: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 216
	i32 3428513518, ; 512: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 513: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 514: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 515: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 219
	i32 3445260447, ; 516: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 517: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3458724246, ; 518: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 296
	i32 3471940407, ; 519: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 520: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 521: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 297
	i32 3485117614, ; 522: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 523: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 524: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 208
	i32 3509114376, ; 525: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 526: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 527: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 528: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3543500826, ; 529: ru-RU\UnitsNet.resources => 0xd335881a => 310
	i32 3560100363, ; 530: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 531: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 532: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 305
	i32 3587859025, ; 533: zh-CN\UnitsNet.resources.dll => 0xd5da6251 => 311
	i32 3592228221, ; 534: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 307
	i32 3597029428, ; 535: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 194
	i32 3598340787, ; 536: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 537: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 538: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 539: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 243
	i32 3633644679, ; 540: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 198
	i32 3638274909, ; 541: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 542: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 229
	i32 3643446276, ; 543: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 302
	i32 3643854240, ; 544: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 240
	i32 3645089577, ; 545: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 546: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 547: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 548: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 549: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 204
	i32 3684561358, ; 550: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 208
	i32 3700866549, ; 551: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 552: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 213
	i32 3716563718, ; 553: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 554: Xamarin.AndroidX.Annotation => 0xdda814c6 => 197
	i32 3724971120, ; 555: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 239
	i32 3732100267, ; 556: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 557: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 558: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 559: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 560: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 277
	i32 3786282454, ; 561: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 206
	i32 3792276235, ; 562: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 563: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 564: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 565: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 566: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 567: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 568: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 569: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 570: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 571: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 572: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 573: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 574: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 575: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 254
	i32 3888767677, ; 576: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 244
	i32 3896106733, ; 577: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 578: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 212
	i32 3901907137, ; 579: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 580: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 293
	i32 3920810846, ; 581: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 582: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 257
	i32 3928044579, ; 583: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 584: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 585: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 242
	i32 3945713374, ; 586: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 587: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 588: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 200
	i32 3959773229, ; 589: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 231
	i32 4003436829, ; 590: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 591: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 199
	i32 4025784931, ; 592: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 593: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 594: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 595: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 596: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 597: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 279
	i32 4094352644, ; 598: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 599: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 600: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 601: Xamarin.AndroidX.Emoji2 => 0xf479582c => 220
	i32 4103439459, ; 602: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 303
	i32 4126470640, ; 603: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 604: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 605: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 606: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 607: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 303
	i32 4151237749, ; 608: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 609: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 610: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 611: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 612: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 613: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 236
	i32 4184000013, ; 614: PropertyChanged.dll => 0xf962c60d => 189
	i32 4185676441, ; 615: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 616: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 617: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 618: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 292
	i32 4256097574, ; 619: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 213
	i32 4258378803, ; 620: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 235
	i32 4260525087, ; 621: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 622: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 623: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 624: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 236
	i32 4294763496 ; 625: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 222
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [626 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 232, ; 3
	i32 266, ; 4
	i32 48, ; 5
	i32 274, ; 6
	i32 80, ; 7
	i32 283, ; 8
	i32 145, ; 9
	i32 30, ; 10
	i32 307, ; 11
	i32 124, ; 12
	i32 188, ; 13
	i32 102, ; 14
	i32 291, ; 15
	i32 250, ; 16
	i32 107, ; 17
	i32 250, ; 18
	i32 139, ; 19
	i32 270, ; 20
	i32 306, ; 21
	i32 299, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 206, ; 26
	i32 132, ; 27
	i32 252, ; 28
	i32 151, ; 29
	i32 18, ; 30
	i32 204, ; 31
	i32 26, ; 32
	i32 226, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 310, ; 37
	i32 91, ; 38
	i32 209, ; 39
	i32 147, ; 40
	i32 228, ; 41
	i32 225, ; 42
	i32 54, ; 43
	i32 69, ; 44
	i32 304, ; 45
	i32 195, ; 46
	i32 83, ; 47
	i32 282, ; 48
	i32 227, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 312, ; 57
	i32 165, ; 58
	i32 302, ; 59
	i32 210, ; 60
	i32 12, ; 61
	i32 223, ; 62
	i32 125, ; 63
	i32 152, ; 64
	i32 113, ; 65
	i32 166, ; 66
	i32 164, ; 67
	i32 225, ; 68
	i32 238, ; 69
	i32 280, ; 70
	i32 84, ; 71
	i32 182, ; 72
	i32 150, ; 73
	i32 270, ; 74
	i32 60, ; 75
	i32 301, ; 76
	i32 178, ; 77
	i32 51, ; 78
	i32 103, ; 79
	i32 114, ; 80
	i32 40, ; 81
	i32 263, ; 82
	i32 261, ; 83
	i32 120, ; 84
	i32 52, ; 85
	i32 44, ; 86
	i32 119, ; 87
	i32 215, ; 88
	i32 293, ; 89
	i32 221, ; 90
	i32 81, ; 91
	i32 190, ; 92
	i32 136, ; 93
	i32 257, ; 94
	i32 202, ; 95
	i32 8, ; 96
	i32 73, ; 97
	i32 155, ; 98
	i32 272, ; 99
	i32 154, ; 100
	i32 92, ; 101
	i32 267, ; 102
	i32 45, ; 103
	i32 271, ; 104
	i32 109, ; 105
	i32 129, ; 106
	i32 25, ; 107
	i32 192, ; 108
	i32 72, ; 109
	i32 55, ; 110
	i32 46, ; 111
	i32 299, ; 112
	i32 181, ; 113
	i32 216, ; 114
	i32 22, ; 115
	i32 230, ; 116
	i32 86, ; 117
	i32 43, ; 118
	i32 160, ; 119
	i32 71, ; 120
	i32 309, ; 121
	i32 243, ; 122
	i32 284, ; 123
	i32 3, ; 124
	i32 42, ; 125
	i32 63, ; 126
	i32 298, ; 127
	i32 16, ; 128
	i32 53, ; 129
	i32 295, ; 130
	i32 266, ; 131
	i32 105, ; 132
	i32 271, ; 133
	i32 288, ; 134
	i32 264, ; 135
	i32 227, ; 136
	i32 34, ; 137
	i32 158, ; 138
	i32 85, ; 139
	i32 32, ; 140
	i32 297, ; 141
	i32 12, ; 142
	i32 51, ; 143
	i32 56, ; 144
	i32 247, ; 145
	i32 36, ; 146
	i32 309, ; 147
	i32 177, ; 148
	i32 265, ; 149
	i32 200, ; 150
	i32 35, ; 151
	i32 278, ; 152
	i32 58, ; 153
	i32 234, ; 154
	i32 311, ; 155
	i32 173, ; 156
	i32 17, ; 157
	i32 268, ; 158
	i32 164, ; 159
	i32 300, ; 160
	i32 294, ; 161
	i32 290, ; 162
	i32 233, ; 163
	i32 180, ; 164
	i32 260, ; 165
	i32 296, ; 166
	i32 153, ; 167
	i32 256, ; 168
	i32 241, ; 169
	i32 202, ; 170
	i32 29, ; 171
	i32 52, ; 172
	i32 261, ; 173
	i32 5, ; 174
	i32 276, ; 175
	i32 251, ; 176
	i32 255, ; 177
	i32 207, ; 178
	i32 272, ; 179
	i32 199, ; 180
	i32 218, ; 181
	i32 285, ; 182
	i32 85, ; 183
	i32 260, ; 184
	i32 61, ; 185
	i32 112, ; 186
	i32 305, ; 187
	i32 57, ; 188
	i32 306, ; 189
	i32 247, ; 190
	i32 99, ; 191
	i32 19, ; 192
	i32 211, ; 193
	i32 111, ; 194
	i32 101, ; 195
	i32 102, ; 196
	i32 274, ; 197
	i32 104, ; 198
	i32 264, ; 199
	i32 71, ; 200
	i32 38, ; 201
	i32 32, ; 202
	i32 103, ; 203
	i32 73, ; 204
	i32 280, ; 205
	i32 9, ; 206
	i32 123, ; 207
	i32 46, ; 208
	i32 201, ; 209
	i32 182, ; 210
	i32 9, ; 211
	i32 43, ; 212
	i32 4, ; 213
	i32 248, ; 214
	i32 304, ; 215
	i32 31, ; 216
	i32 138, ; 217
	i32 92, ; 218
	i32 93, ; 219
	i32 49, ; 220
	i32 141, ; 221
	i32 112, ; 222
	i32 140, ; 223
	i32 217, ; 224
	i32 115, ; 225
	i32 265, ; 226
	i32 157, ; 227
	i32 76, ; 228
	i32 308, ; 229
	i32 79, ; 230
	i32 237, ; 231
	i32 37, ; 232
	i32 259, ; 233
	i32 221, ; 234
	i32 214, ; 235
	i32 64, ; 236
	i32 138, ; 237
	i32 15, ; 238
	i32 116, ; 239
	i32 253, ; 240
	i32 262, ; 241
	i32 209, ; 242
	i32 48, ; 243
	i32 70, ; 244
	i32 80, ; 245
	i32 126, ; 246
	i32 94, ; 247
	i32 121, ; 248
	i32 269, ; 249
	i32 26, ; 250
	i32 230, ; 251
	i32 97, ; 252
	i32 28, ; 253
	i32 205, ; 254
	i32 275, ; 255
	i32 149, ; 256
	i32 169, ; 257
	i32 4, ; 258
	i32 98, ; 259
	i32 33, ; 260
	i32 93, ; 261
	i32 252, ; 262
	i32 178, ; 263
	i32 21, ; 264
	i32 41, ; 265
	i32 170, ; 266
	i32 291, ; 267
	i32 223, ; 268
	i32 283, ; 269
	i32 237, ; 270
	i32 268, ; 271
	i32 262, ; 272
	i32 242, ; 273
	i32 2, ; 274
	i32 134, ; 275
	i32 111, ; 276
	i32 179, ; 277
	i32 192, ; 278
	i32 300, ; 279
	i32 58, ; 280
	i32 95, ; 281
	i32 282, ; 282
	i32 39, ; 283
	i32 203, ; 284
	i32 25, ; 285
	i32 94, ; 286
	i32 276, ; 287
	i32 89, ; 288
	i32 99, ; 289
	i32 0, ; 290
	i32 10, ; 291
	i32 87, ; 292
	i32 287, ; 293
	i32 100, ; 294
	i32 249, ; 295
	i32 174, ; 296
	i32 0, ; 297
	i32 269, ; 298
	i32 194, ; 299
	i32 279, ; 300
	i32 7, ; 301
	i32 234, ; 302
	i32 191, ; 303
	i32 88, ; 304
	i32 229, ; 305
	i32 154, ; 306
	i32 278, ; 307
	i32 33, ; 308
	i32 116, ; 309
	i32 82, ; 310
	i32 20, ; 311
	i32 11, ; 312
	i32 162, ; 313
	i32 3, ; 314
	i32 186, ; 315
	i32 286, ; 316
	i32 181, ; 317
	i32 179, ; 318
	i32 84, ; 319
	i32 273, ; 320
	i32 64, ; 321
	i32 288, ; 322
	i32 256, ; 323
	i32 143, ; 324
	i32 238, ; 325
	i32 157, ; 326
	i32 41, ; 327
	i32 117, ; 328
	i32 175, ; 329
	i32 193, ; 330
	i32 245, ; 331
	i32 131, ; 332
	i32 75, ; 333
	i32 66, ; 334
	i32 292, ; 335
	i32 172, ; 336
	i32 197, ; 337
	i32 143, ; 338
	i32 106, ; 339
	i32 151, ; 340
	i32 70, ; 341
	i32 286, ; 342
	i32 156, ; 343
	i32 174, ; 344
	i32 121, ; 345
	i32 127, ; 346
	i32 287, ; 347
	i32 152, ; 348
	i32 220, ; 349
	i32 141, ; 350
	i32 207, ; 351
	i32 284, ; 352
	i32 20, ; 353
	i32 14, ; 354
	i32 135, ; 355
	i32 75, ; 356
	i32 59, ; 357
	i32 210, ; 358
	i32 167, ; 359
	i32 168, ; 360
	i32 184, ; 361
	i32 15, ; 362
	i32 74, ; 363
	i32 6, ; 364
	i32 23, ; 365
	i32 290, ; 366
	i32 232, ; 367
	i32 191, ; 368
	i32 91, ; 369
	i32 285, ; 370
	i32 1, ; 371
	i32 136, ; 372
	i32 289, ; 373
	i32 233, ; 374
	i32 255, ; 375
	i32 134, ; 376
	i32 69, ; 377
	i32 146, ; 378
	i32 294, ; 379
	i32 273, ; 380
	i32 224, ; 381
	i32 180, ; 382
	i32 88, ; 383
	i32 96, ; 384
	i32 214, ; 385
	i32 219, ; 386
	i32 289, ; 387
	i32 31, ; 388
	i32 45, ; 389
	i32 228, ; 390
	i32 193, ; 391
	i32 109, ; 392
	i32 158, ; 393
	i32 35, ; 394
	i32 22, ; 395
	i32 114, ; 396
	i32 57, ; 397
	i32 253, ; 398
	i32 144, ; 399
	i32 118, ; 400
	i32 120, ; 401
	i32 110, ; 402
	i32 195, ; 403
	i32 139, ; 404
	i32 201, ; 405
	i32 275, ; 406
	i32 54, ; 407
	i32 105, ; 408
	i32 295, ; 409
	i32 185, ; 410
	i32 186, ; 411
	i32 133, ; 412
	i32 189, ; 413
	i32 267, ; 414
	i32 308, ; 415
	i32 258, ; 416
	i32 246, ; 417
	i32 301, ; 418
	i32 224, ; 419
	i32 188, ; 420
	i32 159, ; 421
	i32 211, ; 422
	i32 163, ; 423
	i32 132, ; 424
	i32 246, ; 425
	i32 161, ; 426
	i32 235, ; 427
	i32 140, ; 428
	i32 258, ; 429
	i32 254, ; 430
	i32 169, ; 431
	i32 187, ; 432
	i32 196, ; 433
	i32 263, ; 434
	i32 40, ; 435
	i32 222, ; 436
	i32 81, ; 437
	i32 56, ; 438
	i32 37, ; 439
	i32 97, ; 440
	i32 166, ; 441
	i32 172, ; 442
	i32 259, ; 443
	i32 82, ; 444
	i32 198, ; 445
	i32 98, ; 446
	i32 30, ; 447
	i32 159, ; 448
	i32 18, ; 449
	i32 127, ; 450
	i32 119, ; 451
	i32 218, ; 452
	i32 190, ; 453
	i32 249, ; 454
	i32 231, ; 455
	i32 251, ; 456
	i32 165, ; 457
	i32 226, ; 458
	i32 312, ; 459
	i32 281, ; 460
	i32 248, ; 461
	i32 239, ; 462
	i32 170, ; 463
	i32 16, ; 464
	i32 144, ; 465
	i32 125, ; 466
	i32 118, ; 467
	i32 38, ; 468
	i32 115, ; 469
	i32 47, ; 470
	i32 142, ; 471
	i32 117, ; 472
	i32 34, ; 473
	i32 173, ; 474
	i32 95, ; 475
	i32 53, ; 476
	i32 240, ; 477
	i32 129, ; 478
	i32 153, ; 479
	i32 24, ; 480
	i32 161, ; 481
	i32 217, ; 482
	i32 148, ; 483
	i32 104, ; 484
	i32 89, ; 485
	i32 205, ; 486
	i32 60, ; 487
	i32 142, ; 488
	i32 100, ; 489
	i32 5, ; 490
	i32 13, ; 491
	i32 122, ; 492
	i32 135, ; 493
	i32 28, ; 494
	i32 281, ; 495
	i32 72, ; 496
	i32 215, ; 497
	i32 24, ; 498
	i32 203, ; 499
	i32 244, ; 500
	i32 241, ; 501
	i32 298, ; 502
	i32 137, ; 503
	i32 196, ; 504
	i32 212, ; 505
	i32 168, ; 506
	i32 245, ; 507
	i32 277, ; 508
	i32 101, ; 509
	i32 123, ; 510
	i32 216, ; 511
	i32 176, ; 512
	i32 163, ; 513
	i32 167, ; 514
	i32 219, ; 515
	i32 39, ; 516
	i32 183, ; 517
	i32 296, ; 518
	i32 17, ; 519
	i32 171, ; 520
	i32 297, ; 521
	i32 137, ; 522
	i32 150, ; 523
	i32 208, ; 524
	i32 155, ; 525
	i32 130, ; 526
	i32 19, ; 527
	i32 65, ; 528
	i32 310, ; 529
	i32 147, ; 530
	i32 47, ; 531
	i32 305, ; 532
	i32 311, ; 533
	i32 307, ; 534
	i32 194, ; 535
	i32 79, ; 536
	i32 61, ; 537
	i32 106, ; 538
	i32 243, ; 539
	i32 198, ; 540
	i32 49, ; 541
	i32 229, ; 542
	i32 302, ; 543
	i32 240, ; 544
	i32 14, ; 545
	i32 175, ; 546
	i32 68, ; 547
	i32 171, ; 548
	i32 204, ; 549
	i32 208, ; 550
	i32 78, ; 551
	i32 213, ; 552
	i32 108, ; 553
	i32 197, ; 554
	i32 239, ; 555
	i32 67, ; 556
	i32 63, ; 557
	i32 27, ; 558
	i32 160, ; 559
	i32 277, ; 560
	i32 206, ; 561
	i32 10, ; 562
	i32 183, ; 563
	i32 11, ; 564
	i32 78, ; 565
	i32 126, ; 566
	i32 83, ; 567
	i32 177, ; 568
	i32 66, ; 569
	i32 107, ; 570
	i32 65, ; 571
	i32 128, ; 572
	i32 122, ; 573
	i32 77, ; 574
	i32 254, ; 575
	i32 244, ; 576
	i32 8, ; 577
	i32 212, ; 578
	i32 2, ; 579
	i32 293, ; 580
	i32 44, ; 581
	i32 257, ; 582
	i32 156, ; 583
	i32 128, ; 584
	i32 242, ; 585
	i32 23, ; 586
	i32 133, ; 587
	i32 200, ; 588
	i32 231, ; 589
	i32 29, ; 590
	i32 199, ; 591
	i32 62, ; 592
	i32 185, ; 593
	i32 90, ; 594
	i32 87, ; 595
	i32 148, ; 596
	i32 279, ; 597
	i32 187, ; 598
	i32 36, ; 599
	i32 86, ; 600
	i32 220, ; 601
	i32 303, ; 602
	i32 176, ; 603
	i32 50, ; 604
	i32 6, ; 605
	i32 90, ; 606
	i32 303, ; 607
	i32 21, ; 608
	i32 162, ; 609
	i32 96, ; 610
	i32 50, ; 611
	i32 113, ; 612
	i32 236, ; 613
	i32 189, ; 614
	i32 130, ; 615
	i32 76, ; 616
	i32 27, ; 617
	i32 292, ; 618
	i32 213, ; 619
	i32 235, ; 620
	i32 7, ; 621
	i32 184, ; 622
	i32 110, ; 623
	i32 236, ; 624
	i32 222 ; 625
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
