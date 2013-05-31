.class public Lcom/android/systemui/statusbar/powerwidget/LTEButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "LTEButton.java"


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    .line 20
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "preferred_network_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    const-string v0, "toggleLte"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentPreferredNetworkMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    const/4 v1, -0x1

    .line 82
    .local v1, network:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 49
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 50
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 63
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->getCurrentPreferredNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, network:I
    packed-switch v0, :pswitch_data_0

    .line 39
    const v1, 0x7f020162

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 40
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    .line 43
    :goto_0
    return-void

    .line 35
    :pswitch_0
    const v1, 0x7f020163

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mIcon:I

    .line 36
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/LTEButton;->mState:I

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
