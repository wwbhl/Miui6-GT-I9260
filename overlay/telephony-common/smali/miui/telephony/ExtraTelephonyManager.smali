.class public Lmiui/telephony/ExtraTelephonyManager;
.super Ljava/lang/Object;
.source "ExtraTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ExtraTelephonyManager$TypedSimId;,
        Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_ID_READY:Ljava/lang/String; = "android.intent.action.DEVICE_ID_READY"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final MIN_TIMEOUT_DURATION:J = 0x927c0L

.field private static final NANOSECOND_TO_MILLISECOND:J = 0xf4240L

.field public static final PROPERTY_DEVICE_ID:Ljava/lang/String; = "ro.ril.miui.imei"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephonyManager"

.field private static volatile sDeviceIdCache:Ljava/lang/String;

.field private static volatile sIccIdCache:Ljava/lang/String;

.field private static volatile sImsiCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 32
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    return-object v0
.end method

.method public static blockingCompareSimId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    const/4 v4, 0x1

    .line 450
    :goto_0
    return v4

    .line 429
    :cond_0
    invoke-static {p1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->parse(Ljava/lang/String;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v3

    .line 430
    .local v3, "parsedSimId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    iget v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->type:I

    if-nez v4, :cond_1

    .line 431
    const/4 v2, 0x0

    .line 433
    .local v2, "iccid":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 437
    :goto_1
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v4, v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->value:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1

    .line 442
    .end local v1    # "e":Lmiui/telephony/exception/IllegalDeviceException;
    .end local v2    # "iccid":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 444
    .local v0, "currentSimId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_start_1
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 448
    :goto_2
    const-string v4, "ExtraTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed sim id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v3, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 445
    :catch_1
    move-exception v1

    .line 446
    .restart local v1    # "e":Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v1}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_2
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 77
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blockingGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v1, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    .line 91
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-static {p0, p1, p2}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "device id is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_1
    sput-object v1, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p0, p1, p2}, Lmiui/telephony/ExtraTelephonyManager;->blockingWaitLooper(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "device id is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_4
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sDeviceIdCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public static blockingGetIccId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sIccIdCache:Ljava/lang/String;

    .line 192
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 200
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 195
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "icc id is is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sIccIdCache:Ljava/lang/String;

    move-object v1, v0

    .line 200
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static blockingGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lmiui/telephony/ExtraTelephonyManager;->sImsiCache:Ljava/lang/String;

    .line 264
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 272
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 267
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    new-instance v2, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v3, "imsi is is empty"

    invoke-direct {v2, v3}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_1
    sput-object v0, Lmiui/telephony/ExtraTelephonyManager;->sImsiCache:Ljava/lang/String;

    move-object v1, v0

    .line 272
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static blockingGetSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blockingGetTypedSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v0

    .line 335
    .local v0, "result":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-nez v0, :cond_0

    .line 336
    new-instance v1, Lmiui/telephony/exception/IllegalDeviceException;

    const-string v2, "failed to get sim id"

    invoke-direct {v1, v2}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_0
    return-object v0
.end method

.method private static blockingWaitLooper(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # J

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v6, v8, v10

    .line 158
    .local v6, "now":J
    add-long v4, v6, p1

    .line 160
    .local v4, "end":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_0

    .line 161
    const-wide v8, 0x7fffffffffffffffL

    sub-long/2addr v8, p1

    cmp-long v8, v8, v6

    if-gez v8, :cond_0

    .line 162
    const-wide v4, 0x7fffffffffffffffL

    .line 165
    :cond_0
    :goto_0
    cmp-long v8, v6, v4

    if-gez v8, :cond_2

    .line 166
    sub-long v8, v4, v6

    const-wide/32 v10, 0x927c0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 168
    .local v1, "duration":J
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v8

    invoke-virtual {v8}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 178
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "duration":J
    :goto_2
    return-object v0

    .line 169
    .restart local v1    # "duration":J
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v8, "ExtraTelephonyManager"

    const-string v9, "blockingWaitLooper"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 176
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v6, v8, v10

    .line 177
    goto :goto_0

    .line 178
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "duration":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 455
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    return-void
.end method

.method public static getSimId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 392
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v1

    .line 393
    .local v1, "typedSimId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;->toPlain()Ljava/lang/String;

    move-result-object v2

    .line 396
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 8
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 400
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 401
    .local v2, "phoneType":I
    const-string v3, "ExtraTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-ne v2, v7, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "iccid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v6, v0}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    .line 413
    .end local v0    # "iccid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 407
    :cond_0
    if-ne v2, v6, :cond_1

    .line 408
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    invoke-direct {v3, v7, v1}, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 413
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "operator":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 71
    .end local v0    # "operator":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static hasTelephonyFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static waitAndGetDeviceId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 125
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 127
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 128
    .local v2, "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$1;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$1;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 135
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 143
    :cond_0
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v6}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    :goto_0
    return-object v6

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 147
    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 149
    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6
.end method

.method private static waitAndGetIccid(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 212
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 213
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 216
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 217
    .local v2, "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$2;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$2;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 228
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 236
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v6

    .line 237
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 240
    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 242
    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v6, v7

    .line 247
    goto :goto_0
.end method

.method private static waitAndGetImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 280
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 281
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 284
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 285
    .local v2, "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    new-instance v4, Lmiui/telephony/ExtraTelephonyManager$3;

    invoke-direct {v4, v2}, Lmiui/telephony/ExtraTelephonyManager$3;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;)V

    .line 296
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    invoke-virtual {v2, v3}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 304
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v6

    .line 305
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 308
    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 310
    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Ljava/lang/String;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v6, v7

    .line 315
    goto :goto_0
.end method

.method private static waitAndGetSimId(Landroid/content/Context;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 348
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 349
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->hasTelephonyFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 350
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 352
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;

    invoke-direct {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;-><init>()V

    .line 353
    .local v2, "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    new-instance v3, Lmiui/telephony/ExtraTelephonyManager$4;

    invoke-direct {v3, v2, v5}, Lmiui/telephony/ExtraTelephonyManager$4;-><init>(Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;Landroid/telephony/TelephonyManager;)V

    .line 362
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    invoke-static {v5}, Lmiui/telephony/ExtraTelephonyManager;->getSimIdByPhoneType(Landroid/telephony/TelephonyManager;)Lmiui/telephony/ExtraTelephonyManager$TypedSimId;

    move-result-object v4

    .line 366
    .local v4, "simId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v2, v4}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 370
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "simId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v6

    .line 371
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    .restart local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "simId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .restart local v5    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 374
    goto :goto_0

    .line 375
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ExtraTelephonyManager"

    const-string v8, "exception when get sim id"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v6, v7

    .line 377
    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v6

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "future":Lmiui/telephony/ExtraTelephonyManager$AsyncFuture;, "Lmiui/telephony/ExtraTelephonyManager$AsyncFuture<Lmiui/telephony/ExtraTelephonyManager$TypedSimId;>;"
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "simId":Lmiui/telephony/ExtraTelephonyManager$TypedSimId;
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v6, v7

    .line 382
    goto :goto_0
.end method
