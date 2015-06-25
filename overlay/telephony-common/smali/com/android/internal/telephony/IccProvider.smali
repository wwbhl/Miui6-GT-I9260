.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field public static final ADDRESS_BOOK_COLUMN_ANR:I = 0x4

.field public static final ADDRESS_BOOK_COLUMN_EMAILS:I = 0x2

.field public static final ADDRESS_BOOK_COLUMN_ID:I = 0x3

.field public static final ADDRESS_BOOK_COLUMN_NAME:I = 0x0

.field public static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field public static final ADDRESS_BOOK_COLUMN_NUMBER:I = 0x1

.field private static final ADN:I = 0x1

.field private static final ADN_CAPACITY:I = 0x5

.field private static final ADN_STORAGE:I = 0x6

.field static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final FREE_ADN:I = 0x4

.field private static final IS_PHONEBOOK_READY:I = 0x7

.field private static final IS_USIM_PHONEBOOK:I = 0x8

.field private static final LAST_ERROR:I = 0x9

.field private static final SDN:I = 0x3

.field public static final STR_ANR:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_ID:Ljava/lang/String; = "_id"

.field public static final STR_NAME:Ljava/lang/String; = "name"

.field public static final STR_NEW_ANR:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NAME:Ljava/lang/String; = "newName"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final STR_TAG:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "anr"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "freeadn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adncapacity"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adnstroage"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isphonebookready"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "isusimphonebook"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "lasterror"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAdnCapacity(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "capacity":I
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v2, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 375
    .local v2, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 376
    .local v3, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v1, v6, [Ljava/lang/Object;

    .line 383
    .local v1, "count":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    .line 384
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 385
    return-object v2

    .line 379
    .end local v1    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getFreeAdn(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "freeAdn":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "count"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 356
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 357
    .local v3, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 364
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 365
    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 366
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 367
    return-object v1

    .line 360
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "service":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 312
    const-string v1, "simphonebook"

    .line 316
    :goto_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 318
    .local v0, "proxyService":Lcom/android/internal/telephony/IIccPhoneBook;
    instance-of v2, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    if-eqz v2, :cond_1

    .line 319
    check-cast v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 321
    .end local v0    # "proxyService":Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_1
    return-object v0

    .line 314
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simphonebook."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 321
    .restart local v0    # "proxyService":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLastError(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 444
    const/4 v2, 0x0

    .line 445
    .local v2, "errno":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "error"

    aput-object v5, v4, v7

    invoke-direct {v1, v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 447
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 448
    .local v3, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getLastError()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 454
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v6, [Ljava/lang/Object;

    .line 455
    .local v0, "count":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v7

    .line 456
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 457
    return-object v1

    .line 451
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getStorage(I)Landroid/database/Cursor;
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 389
    const/4 v2, 0x0

    .line 390
    .local v2, "freeAdn":I
    const/4 v0, 0x0

    .line 391
    .local v0, "capacity":I
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "total"

    aput-object v6, v5, v8

    const-string v6, "free"

    aput-object v6, v5, v7

    invoke-direct {v1, v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 394
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 395
    .local v3, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnCapacity()I

    move-result v0

    .line 397
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getFreeAdn()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 402
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v4, v9, [Ljava/lang/Object;

    .line 403
    .local v4, "storage":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 405
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 406
    return-object v1

    .line 399
    .end local v4    # "storage":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isPhoneBookReady(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, "ready":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "ready"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 413
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 414
    .local v2, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isPhoneBookReady()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 420
    .end local v2    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 421
    .local v0, "count":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 422
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 423
    return-object v1

    :cond_1
    move v4, v5

    .line 421
    goto :goto_1

    .line 417
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private isUsimPhoneBook(I)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "usim":Z
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "usimphonebook"

    aput-object v7, v6, v5

    invoke-direct {v1, v6, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 430
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v2

    .line 431
    .local v2, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isUsimPhoneBookRecords()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 437
    .end local v2    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :cond_0
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 438
    .local v0, "count":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 439
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 440
    return-object v1

    :cond_1
    move v4, v5

    .line 438
    goto :goto_1

    .line 434
    .end local v0    # "count":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 9
    .param p1, "efid"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "slotId"    # I

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 328
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v3

    .line 329
    .local v3, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object v0, v4

    .line 339
    .end local v3    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/IccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "selections":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 342
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "s":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 343
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v7, v1, v2, v6}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "i":I
    .end local v5    # "s":I
    .end local v6    # "selections":[Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 348
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_2
    return-object v1

    .line 334
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I[Ljava/lang/String;)V
    .locals 8
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I
    .param p4, "selections"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 510
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v5

    .line 511
    .local v3, "length":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p4, p1, v5}, Lcom/android/internal/telephony/IccProvider;->match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    new-array v1, v3, [Ljava/lang/Object;

    .line 513
    .local v1, "contact":[Ljava/lang/Object;
    const/4 v5, 0x3

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 514
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 515
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 517
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const/4 v2, 0x1

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 521
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 526
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "s":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 527
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 529
    .end local v1    # "contact":[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 615
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private match([Ljava/lang/String;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z
    .locals 5
    .param p1, "selections"    # [Ljava/lang/String;
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 540
    const/4 v1, 0x1

    .line 541
    .local v1, "match":Z
    if-eqz p1, :cond_2

    .line 542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 543
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_1
    if-nez v1, :cond_0

    .line 571
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 549
    .restart local v0    # "i":I
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 550
    goto :goto_1

    .line 552
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 553
    goto :goto_1

    .line 555
    :pswitch_2
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_3

    const/4 v1, 0x1

    .line 556
    :goto_2
    goto :goto_1

    :cond_3
    move v1, v2

    .line 555
    goto :goto_2

    .line 558
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 560
    :goto_3
    goto :goto_1

    .line 558
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_3

    .line 562
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    const/4 v2, 0x1

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 533
    .local v0, "len":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 534
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 536
    :cond_0
    return-object p1
.end method

.method private parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 576
    const/4 v6, 0x0

    .line 611
    :cond_0
    return-object v6

    .line 579
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 580
    .local v6, "results":[Ljava/lang/String;
    const-string v9, "AND"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 582
    .local v0, "argsIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_0

    .line 583
    aget-object v5, v7, v2

    .line 584
    .local v5, "param":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "keyVal":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 582
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "val":Ljava/lang/String;
    const-string v9, "?"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 592
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "argsIndex":I
    .local v1, "argsIndex":I
    aget-object v8, p2, v0

    move v0, v1

    .line 595
    .end local v1    # "argsIndex":I
    .restart local v0    # "argsIndex":I
    :cond_4
    const-string v9, "tag"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 596
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 597
    :cond_5
    const-string v9, "pin2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 598
    sget-object v9, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 599
    :cond_6
    const-string v9, "number"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 600
    const/4 v9, 0x1

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 601
    :cond_7
    const-string v9, "_id"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 602
    const/4 v9, 0x3

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 603
    :cond_8
    const-string v9, "name"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 604
    const/4 v9, 0x0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto :goto_1

    .line 605
    :cond_9
    const-string v9, "emails"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 606
    const/4 v9, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1

    .line 607
    :cond_a
    const-string v9, "anr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 608
    const/4 v9, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    goto/16 :goto_1
.end method

.method private updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;II)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "slotId"    # I

    .prologue
    .line 499
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 500
    .local v0, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v1

    .line 506
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newNumber"    # Ljava/lang/String;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "slotId"    # I

    .prologue
    .line 474
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 475
    .local v0, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    .line 476
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 481
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 478
    :catch_0
    move-exception v1

    .line 481
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z
    .locals 2
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "slotId"    # I

    .prologue
    .line 487
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 488
    .local v0, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimPhoneBookRecordsBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 491
    :catch_0
    move-exception v1

    .line 494
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "slotId"    # I

    .prologue
    .line 462
    :try_start_0
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/IccProvider;->getIccPhoneBookService(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 463
    .local v0, "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 464
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 469
    .end local v0    # "phoneBook":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :goto_0
    return v1

    .line 466
    :catch_0
    move-exception v1

    .line 469
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 248
    const-string v3, "slot_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 249
    .local v20, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v9

    .line 252
    .local v9, "slotId":I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 253
    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    .line 261
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v9    # "slotId":I
    .end local v18    # "match":I
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 255
    .restart local v9    # "slotId":I
    .restart local v18    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 264
    .local v4, "efid":I
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccProvider;->parseSelection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 265
    .local v19, "selections":[Ljava/lang/String;
    if-nez v19, :cond_1

    .line 266
    const/4 v3, 0x0

    .line 288
    :goto_2
    return v3

    .line 258
    .end local v4    # "efid":I
    .end local v19    # "selections":[Ljava/lang/String;
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 259
    .restart local v4    # "efid":I
    goto :goto_1

    .line 269
    .restart local v19    # "selections":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    aget-object v3, v19, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 272
    .local v8, "index":I
    :goto_3
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    .line 273
    if-ltz v8, :cond_3

    .line 274
    const-string v5, ""

    const-string v6, ""

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v7, v19, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v21

    .line 288
    .local v21, "success":Z
    :goto_4
    if-nez v21, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    .line 269
    .end local v8    # "index":I
    .end local v21    # "success":Z
    :cond_2
    const/4 v8, -0x1

    goto :goto_3

    .line 276
    .restart local v8    # "index":I
    :cond_3
    const/4 v3, 0x0

    aget-object v12, v19, v3

    const/4 v3, 0x1

    aget-object v13, v19, v3

    const-string v14, ""

    const-string v15, ""

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v3, v3

    aget-object v16, v19, v3

    move-object/from16 v10, p0

    move v11, v4

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    .line 280
    .end local v21    # "success":Z
    :cond_4
    if-ltz v8, :cond_5

    .line 281
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const-string v10, ""

    invoke-direct {v3, v5, v6, v7, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v8, v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    .line 283
    .end local v21    # "success":Z
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v5, 0x0

    aget-object v5, v19, v5

    const/4 v6, 0x1

    aget-object v6, v19, v6

    const/4 v7, 0x0

    const-string v10, ""

    invoke-direct {v3, v5, v6, v7, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v6, ""

    const-string v7, ""

    const/4 v10, 0x0

    const-string v11, ""

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z

    move-result v21

    .restart local v21    # "success":Z
    goto :goto_4

    .line 288
    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 293
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 124
    const-string v2, "slot_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 125
    .local v16, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v9

    .line 128
    .local v9, "slotId":I
    :goto_0
    const/4 v8, 0x0

    .line 129
    .local v8, "pin2":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 130
    .local v14, "match":I
    packed-switch v14, :pswitch_data_0

    .line 139
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v8    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v14    # "match":I
    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 132
    .restart local v8    # "pin2":Ljava/lang/String;
    .restart local v9    # "slotId":I
    .restart local v14    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 142
    .local v3, "efid":I
    :goto_1
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const-string v2, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    :cond_1
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "number":Ljava/lang/String;
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_2

    .line 150
    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    .line 162
    .local v18, "success":Z
    :goto_2
    if-nez v18, :cond_4

    .line 163
    const/4 v15, 0x0

    .line 183
    :goto_3
    return-object v15

    .line 135
    .end local v3    # "efid":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v18    # "success":Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 136
    .restart local v3    # "efid":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    goto :goto_1

    .line 152
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_2
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, "strEmail":Ljava/lang/String;
    const/4 v13, 0x0

    .line 154
    .local v13, "emails":[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .end local v13    # "emails":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v17, v13, v2

    .line 157
    .restart local v13    # "emails":[Ljava/lang/String;
    :cond_3
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "anr":Ljava/lang/String;
    new-instance v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v10, v6, v7, v13, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v10, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v4, ""

    const-string v5, ""

    const/16 v19, 0x0

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v10, v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z

    move-result v18

    .restart local v18    # "success":Z
    goto :goto_2

    .line 166
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "anr":Ljava/lang/String;
    .end local v13    # "emails":[Ljava/lang/String;
    .end local v17    # "strEmail":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v12, "buf":Ljava/lang/StringBuilder;
    packed-switch v14, :pswitch_data_1

    .line 175
    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 183
    .local v15, "resultUri":Landroid/net/Uri;
    goto :goto_3

    .line 169
    .end local v15    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const-string v2, "adn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 172
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v2, "slot_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "slotIdStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v0

    .line 97
    .local v0, "slotId":I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v0    # "slotId":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 99
    .restart local v0    # "slotId":I
    :pswitch_0
    const/16 v2, 0x6f3a

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 115
    :goto_1
    return-object v2

    .line 101
    :pswitch_1
    const/16 v2, 0x6f3b

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 103
    :pswitch_2
    const/16 v2, 0x6f49

    invoke-direct {p0, v2, p3, p4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 105
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getFreeAdn(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    .line 107
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getAdnCapacity(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    .line 109
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getStorage(I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 111
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->isPhoneBookReady(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    .line 113
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->isUsimPhoneBook(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    .line 115
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getLastError(I)Landroid/database/MatrixCursor;

    move-result-object v2

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 189
    const-string v3, "slot_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 190
    .local v23, "slotIdStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/MultiSimManager;->getDefaultSlotId()I

    move-result v9

    .line 193
    .local v9, "slotId":I
    :goto_0
    const/4 v7, 0x0

    .line 194
    .local v7, "pin2":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 195
    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URI "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    .end local v7    # "pin2":Ljava/lang/String;
    .end local v9    # "slotId":I
    .end local v20    # "match":I
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 197
    .restart local v7    # "pin2":Ljava/lang/String;
    .restart local v9    # "slotId":I
    .restart local v20    # "match":I
    :pswitch_0
    const/16 v4, 0x6f3a

    .line 207
    .local v4, "efid":I
    :goto_1
    const-string v3, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 208
    .local v12, "tag":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v3, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 211
    :cond_1
    const-string v3, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "number":Ljava/lang/String;
    const-string v3, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "newTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const-string v3, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    :cond_2
    const-string v3, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "newNumber":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 222
    .local v19, "index":Ljava/lang/Integer;
    const/16 v3, 0x6f3b

    if-ne v4, v3, :cond_4

    .line 223
    if-eqz v19, :cond_3

    .line 224
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v25

    .line 242
    .local v25, "success":Z
    :goto_2
    if-nez v25, :cond_7

    const/4 v3, 0x0

    :goto_3
    return v3

    .line 200
    .end local v4    # "efid":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v19    # "index":Ljava/lang/Integer;
    .end local v25    # "success":Z
    :pswitch_1
    const/16 v4, 0x6f3b

    .line 201
    .restart local v4    # "efid":I
    const-string v3, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    goto :goto_1

    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v19    # "index":Ljava/lang/Integer;
    :cond_3
    move-object/from16 v10, p0

    move v11, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    .line 226
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 229
    .end local v25    # "success":Z
    :cond_4
    const-string v3, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 230
    .local v24, "strEmail":Ljava/lang/String;
    const/16 v22, 0x0

    .line 231
    .local v22, "newEmails":[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 232
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    .end local v22    # "newEmails":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v24, v22, v3

    .line 234
    .restart local v22    # "newEmails":[Ljava/lang/String;
    :cond_5
    const-string v3, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 235
    .local v21, "newAnr":Ljava/lang/String;
    new-instance v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v18, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v19, :cond_6

    .line 237
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v3, v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 239
    .end local v25    # "success":Z
    :cond_6
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v8, 0x0

    const-string v10, ""

    invoke-direct {v3, v12, v13, v8, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v3, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateAdnRecordsInEfBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)Z

    move-result v25

    .restart local v25    # "success":Z
    goto :goto_2

    .line 242
    .end local v18    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v21    # "newAnr":Ljava/lang/String;
    .end local v22    # "newEmails":[Ljava/lang/String;
    .end local v24    # "strEmail":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    goto :goto_3

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
