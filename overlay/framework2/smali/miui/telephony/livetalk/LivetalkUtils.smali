.class public Lmiui/telephony/livetalk/LivetalkUtils;
.super Ljava/lang/Object;
.source "LivetalkUtils.java"


# static fields
.field private static LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String; = null

.field public static final PARAM_NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/16 v0, 0x92

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "02131274955"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "4001017150"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "4009180380"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "057982637423"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "057982673435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "057982637483"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "059186254445"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "4007571012"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "13365066911"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "13385093977"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "01082167000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "01082167001"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "04273682114"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "04273395714"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "07242453888"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "07242453889"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "15099964229"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "13556003948"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "15975470640"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "15975470385"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "15920941035"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "15920935125"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "15920941128"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "15920938679"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "13539975792"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "15920935118"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "15920935181"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "15099964107"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "15820246441"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "13710043694"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "15800229871"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "15920935474"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "15800229851"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "15099967131"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "13538949551"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "15920941173"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "15920935439"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "15820245695"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "15112134605"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "15099972785"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "15018471154"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "15112188558"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "15986383535"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "15102081806"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "15975486452"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "15920935940"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "15112158992"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "15102023309"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "15113872672"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "13719241770"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "13719242230"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "15800229573"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "13710044218"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "15975486400"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "15986309957"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "15975486203"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "15112158303"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "15975486177"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "15113876984"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "15800229534"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "15920940930"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "15113840075"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "15920833685"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "15820265339"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "15919687084"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "02868894200"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "02868894201"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "02868894202"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "02868894203"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "02868894204"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "02868894205"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "02868894206"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "02868894207"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "02868894208"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "02868894209"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "02868894230"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "02868894231"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "02868894232"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "02868894233"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "02868894234"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "02868894235"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "02868894236"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "02868894237"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "02868894238"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "02868894239"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "2886544081"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "2886541100"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "2886544103"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "2886544104"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "2886544105"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "2886544107"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "2886544108"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "2886544109"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "2886544110"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "2886544111"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "2886544112"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "2886544250"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "2886544251"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "2886544252"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "2886544253"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "2886544254"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "2886544255"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "2886544256"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "2886544257"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "2886544258"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "2886544259"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "2886544260"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "2886544261"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "2886544262"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "2886544263"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "2886544264"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "2886544265"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "2886544266"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "2886544267"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "2886544268"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "2886544269"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "2886544270"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "2886544271"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "2886544272"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "2886544273"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "2886544274"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "2886544275"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "2886544276"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "2886544277"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "2886544278"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "2886544279"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "2886544280"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "2886544281"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "2886544282"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "2886544283"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "2886544284"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "2886544285"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "2886544286"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "2886544287"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "2886544288"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "2886544289"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "2886544290"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "2886544291"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "2886544292"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "2886544293"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "2886544294"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "2886544295"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "2886544296"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "2886544297"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "2886544298"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "2886544299"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLiveTalkCallbackNumber(Ljava/lang/String;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v4

    .line 168
    :cond_1
    sget-object v0, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 169
    .local v3, "suffix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 170
    const/4 v4, 0x1

    goto :goto_0

    .line 168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static updateLivetalkCallBackNumber(Landroid/database/Cursor;)Z
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 177
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    .line 182
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 184
    sget-object v3, Lmiui/telephony/livetalk/LivetalkUtils;->LIVETALK_CALLBACK_NUMBERS_SUFFIX:[Ljava/lang/String;

    const-string v4, "number"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 185
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_2
    const/4 v2, 0x1

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v2
.end method
