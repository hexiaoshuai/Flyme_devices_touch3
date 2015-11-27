.class public Lcom/android/internal/telephony/TyTouch3RIL;
.super Lcom/android/internal/telephony/RIL;
.source "TyTouch3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TyTouch3RIL;-><init>(Landroid/content/Context;II)V

    .line 32
    return-void
.end method


# virtual methods
.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 42
    const/16 v18, 0xd

    .line 45
    .local v18, "numInts":I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 46
    .local v19, "response":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v19, v17

    .line 46
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v2, Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x1

    aget v4, v19, v4

    const/4 v5, 0x2

    aget v5, v19, v5

    const/4 v6, 0x3

    aget v6, v19, v6

    const/4 v7, 0x4

    aget v7, v19, v7

    const/4 v8, 0x5

    aget v8, v19, v8

    const/4 v9, 0x6

    aget v9, v19, v9

    const/4 v10, 0x7

    aget v10, v19, v10

    const/16 v11, 0x8

    aget v11, v19, v11

    const/16 v12, 0x9

    aget v12, v19, v12

    const/16 v13, 0xa

    aget v13, v19, v13

    const/16 v14, 0xb

    aget v14, v19, v14

    const/16 v15, 0xc

    aget v15, v19, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_1
    invoke-direct/range {v2 .. v16}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    return-object v2

    :cond_1
    const/16 v16, 0x0

    goto :goto_1
.end method
