.class public final Lcom/android/internal/telephony/lc/SsProcesser;
.super Ljava/lang/Object;
.source "SsProcesser.java"


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final LOG_TAG:Ljava/lang/String; = "SsProcesser"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field public static final RESULT_CHANGE_BP:I = 0x8

.field public static final RESULT_ERROR:I = 0x0

.field public static final RESULT_GET_CLIR:I = 0x3

.field public static final RESULT_QUERY_CF:I = 0x4

.field public static final RESULT_QUERY_CLIP:I = 0x1

.field public static final RESULT_QUERY_CW:I = 0xa

.field public static final RESULT_QUERY_FL:I = 0x6

.field public static final RESULT_SET_CF:I = 0x5

.field public static final RESULT_SET_CLIR:I = 0x2

.field public static final RESULT_SET_CW:I = 0x9

.field public static final RESULT_SET_FL:I = 0x7

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public cfAction:I

.field public clirMode:I

.field public dialingNumber:Ljava/lang/String;

.field public facility:Ljava/lang/String;

.field public isEnableDesired:I

.field public isSettingUnconditionalVoice:I

.field public poundString:Ljava/lang/String;

.field public pwd:Ljava/lang/String;

.field public reason:I

.field public sc:Ljava/lang/String;

.field public serviceClass:I

.field public sia:Ljava/lang/String;

.field public sib:Ljava/lang/String;

.field public sic:Ljava/lang/String;

.field public time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)([^#]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lc/SsProcesser;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 285
    if-eqz p0, :cond_1

    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 198
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static newFromSS(Ljava/lang/String;)Lcom/android/internal/telephony/lc/SsProcesser;
    .locals 3
    .param p0, "SSString"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, "ret":Lcom/android/internal/telephony/lc/SsProcesser;
    sget-object v2, Lcom/android/internal/telephony/lc/SsProcesser;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 169
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    new-instance v1, Lcom/android/internal/telephony/lc/SsProcesser;

    .end local v1    # "ret":Lcom/android/internal/telephony/lc/SsProcesser;
    invoke-direct {v1}, Lcom/android/internal/telephony/lc/SsProcesser;-><init>()V

    .line 171
    .restart local v1    # "ret":Lcom/android/internal/telephony/lc/SsProcesser;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->poundString:Ljava/lang/String;

    .line 172
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    .line 173
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    .line 174
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->sia:Ljava/lang/String;

    .line 175
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->sib:Ljava/lang/String;

    .line 176
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->sic:Ljava/lang/String;

    .line 177
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->pwd:Ljava/lang/String;

    .line 178
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lc/SsProcesser;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/lc/SsProcesser;->dialingNumber:Ljava/lang/String;

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    new-instance v1, Lcom/android/internal/telephony/lc/SsProcesser;

    .end local v1    # "ret":Lcom/android/internal/telephony/lc/SsProcesser;
    invoke-direct {v1}, Lcom/android/internal/telephony/lc/SsProcesser;-><init>()V

    .line 185
    .restart local v1    # "ret":Lcom/android/internal/telephony/lc/SsProcesser;
    iput-object p0, v1, Lcom/android/internal/telephony/lc/SsProcesser;->poundString:Ljava/lang/String;

    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "AO"

    .line 317
    :goto_0
    return-object v0

    .line 304
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string v0, "OI"

    goto :goto_0

    .line 306
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    const-string v0, "OX"

    goto :goto_0

    .line 308
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    const-string v0, "AI"

    goto :goto_0

    .line 310
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "IR"

    goto :goto_0

    .line 312
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 313
    const-string v0, "AB"

    goto :goto_0

    .line 314
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    const-string v0, "AG"

    goto :goto_0

    .line 316
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 317
    const-string v0, "AC"

    goto :goto_0

    .line 319
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x4

    .line 219
    :goto_0
    return v0

    .line 210
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_2
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    const/4 v0, 0x3

    goto :goto_0

    .line 216
    :cond_4
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    const/4 v0, 0x2

    goto :goto_0

    .line 218
    :cond_5
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    const/4 v0, 0x5

    goto :goto_0

    .line 221
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 227
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    const/4 v1, 0x0

    .line 256
    :goto_0
    return v1

    .line 231
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 259
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 235
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 237
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 239
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 241
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 249
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 251
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 252
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 253
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 254
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 255
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 256
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 266
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getProcessResult()I
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 349
    iget-object v5, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    const-string v6, "30"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 431
    :cond_0
    :goto_0
    return v2

    .line 355
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    iput v1, p0, Lcom/android/internal/telephony/lc/SsProcesser;->clirMode:I

    move v2, v0

    .line 358
    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->clirMode:I

    move v2, v0

    .line 361
    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 363
    goto :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->reason:I

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sic:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->siToTime(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->time:I

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v4

    .line 371
    goto :goto_0

    .line 373
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 374
    iput v1, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    .line 385
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->reason:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->reason:I

    if-ne v0, v4, :cond_e

    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    if-nez v0, :cond_e

    :cond_7
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->isSettingUnconditionalVoice:I

    .line 390
    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    if-ne v0, v3, :cond_9

    :cond_8
    move v2, v1

    :cond_9
    iput v2, p0, Lcom/android/internal/telephony/lc/SsProcesser;->isEnableDesired:I

    .line 394
    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    if-nez v0, :cond_a

    .line 395
    iput v1, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    .line 396
    :cond_a
    const/4 v2, 0x5

    goto/16 :goto_0

    .line 375
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 376
    iput v2, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    goto :goto_1

    .line 377
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 378
    iput v3, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    goto :goto_1

    .line 379
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iput v4, p0, Lcom/android/internal/telephony/lc/SsProcesser;->cfAction:I

    goto :goto_1

    :cond_e
    move v0, v2

    .line 385
    goto :goto_2

    .line 398
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sib:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->facility:Ljava/lang/String;

    .line 401
    iget v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    if-nez v0, :cond_10

    .line 402
    iput v1, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    .line 403
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 404
    const/4 v2, 0x6

    goto/16 :goto_0

    .line 405
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isActivate()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    :cond_12
    const/4 v2, 0x7

    goto/16 :goto_0

    .line 408
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isActivate()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    :cond_14
    const-string v0, "**"

    iput-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sia:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 414
    const-string v0, "AB"

    iput-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->facility:Ljava/lang/String;

    .line 418
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sic:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 416
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sia:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->facility:Ljava/lang/String;

    goto :goto_3

    .line 423
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->sia:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/lc/SsProcesser;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->serviceClass:I

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isActivate()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 426
    :cond_17
    const/16 v2, 0x9

    goto/16 :goto_0

    .line 427
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/telephony/lc/SsProcesser;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/16 v2, 0xa

    goto/16 :goto_0
.end method

.method public isActivate()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lc/SsProcesser;->action:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
