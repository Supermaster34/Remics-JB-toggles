.class public Lcom/android/systemui/quicksettings/NfcTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "NfcTile.java"


# static fields
.field private static mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 23
    new-instance v0, Lcom/android/systemui/quicksettings/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NfcTile$1;-><init>(Lcom/android/systemui/quicksettings/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v0, Lcom/android/systemui/quicksettings/NfcTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NfcTile$2;-><init>(Lcom/android/systemui/quicksettings/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 42
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 43
    return-void
.end method

.method private getNfcState()I
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    sget-object v1, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const/16 v1, -0x64

    goto :goto_0
.end method

.method private declared-synchronized updateTile(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 78
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 87
    const v0, 0x7f02007d

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mDrawable:I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :pswitch_0
    const v0, 0x7f02007e

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mDrawable:I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NfcTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method onPostCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->getNfcState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/NfcTile;->updateTile(I)V

    .line 48
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 49
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateResources()V

    .line 54
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->getNfcState()I

    move-result v0

    .line 64
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 67
    :pswitch_0
    sget-object v1, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v1, Lcom/android/systemui/quicksettings/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NfcTile;->getNfcState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/NfcTile;->updateTile(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NfcTile;->updateQuickSettings()V

    .line 60
    return-void
.end method
