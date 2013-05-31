.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    }
.end annotation


# instance fields
.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeIconId:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field mLastPhoneSignalIconId:I

.field mLastSignalLevel:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMobileActivityIconId:I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 188
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 68
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 69
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 70
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 71
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 72
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 75
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 89
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 90
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 91
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 105
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 106
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 107
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 108
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 111
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 112
    const v5, 0x10805bc

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 116
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 117
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 118
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 119
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 120
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 121
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 122
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 123
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 127
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 128
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 130
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 133
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 134
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 152
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 153
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 154
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 155
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 156
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 157
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 158
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 159
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 163
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 420
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 192
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 194
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 196
    const v5, 0x7f0c0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 197
    const v5, 0x7f0c0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 198
    const v5, 0x1110040

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 206
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 207
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 215
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x7f0a005a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x1040347

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 218
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 221
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 222
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 223
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 224
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 225
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 230
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 242
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 243
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 253
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1495
    if-eqz p1, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1498
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1503
    :goto_0
    return-object v0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    const-string v0, "(unknown)"

    goto :goto_0

    .line 1503
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 516
    :pswitch_0
    const/4 v0, 0x1

    .line 519
    :cond_0
    :pswitch_1
    return v0

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 898
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 909
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 903
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 904
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 905
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 906
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 909
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 526
    return-void

    :cond_0
    move v0, v1

    .line 524
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 965
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 968
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 969
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 971
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 977
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 984
    const/16 v4, 0x32

    if-le v0, v4, :cond_2

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 986
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 987
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 993
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 994
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 995
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 996
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 997
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 998
    return-void

    :cond_0
    move v0, v2

    .line 968
    goto :goto_0

    .line 973
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 984
    goto :goto_2

    .line 989
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_3
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 725
    const/4 v3, 0x1

    .line 727
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v4

    if-nez v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v5, :cond_2

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_1

    .line 732
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 743
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 746
    .local v0, iconId:I
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 780
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 782
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 789
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 790
    return-void

    .line 734
    .end local v0           #iconId:I
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 735
    .restart local v0       #iconId:I
    goto :goto_0

    .line 737
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 738
    .restart local v0       #iconId:I
    goto :goto_0

    .line 740
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 741
    .restart local v0       #iconId:I
    goto :goto_0

    .line 748
    .end local v0           #iconId:I
    :cond_1
    const/4 v0, 0x0

    .line 749
    .restart local v0       #iconId:I
    const/4 v3, 0x0

    goto :goto_1

    .line 752
    .end local v0           #iconId:I
    :cond_2
    const v0, 0x7f0201df

    .line 753
    .restart local v0       #iconId:I
    const/4 v3, 0x0

    goto :goto_1

    .line 757
    .end local v0           #iconId:I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_4

    .line 758
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 770
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 771
    .restart local v0       #iconId:I
    goto :goto_1

    .line 760
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 761
    .restart local v0       #iconId:I
    goto :goto_1

    .line 763
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 764
    .restart local v0       #iconId:I
    goto :goto_1

    .line 766
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 767
    .restart local v0       #iconId:I
    goto :goto_1

    .line 774
    .end local v0           #iconId:I
    :cond_4
    const/4 v0, 0x0

    .line 775
    .restart local v0       #iconId:I
    const/4 v3, 0x0

    goto :goto_1

    .line 783
    .restart local v1       #ident:J
    :catch_0
    move-exception v4

    .line 785
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 758
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f02008d

    const/4 v5, 0x0

    const v4, 0x7f0a00a9

    const v3, 0x7f02019f

    const v2, 0x7f020090

    .line 579
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 581
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 582
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 583
    const v0, 0x7f020092

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 698
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 701
    const v0, 0x7f0200a8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 707
    :cond_0
    :goto_1
    return-void

    .line 587
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 681
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 682
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 683
    const v0, 0x7f0201a2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 684
    const v0, 0x7f0200a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 589
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 590
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 591
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 592
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 600
    :cond_2
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 601
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 602
    const v0, 0x7f0201a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 603
    const v0, 0x7f020094

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 611
    :cond_3
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 612
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 613
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 620
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 621
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 622
    const v0, 0x7f0201a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 623
    const v0, 0x7f0200a2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 627
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 628
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 629
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 635
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HP:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 636
    const v0, 0x7f0201a4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 641
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 643
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 644
    const v0, 0x7f02019e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 645
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 653
    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 654
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 655
    const v0, 0x7f02019e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 656
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 667
    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 668
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 669
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 674
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 675
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 676
    const v0, 0x7f020092

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 688
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 689
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 690
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 703
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 705
    const v0, 0x7f0200a8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_1

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 481
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 503
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 488
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 494
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 495
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 498
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 501
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 5

    .prologue
    const v4, 0x7f0200a6

    const v3, 0x7f0201f4

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 532
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 533
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 576
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v2, :cond_1

    .line 537
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 538
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 539
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 540
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 554
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 556
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .line 568
    .local v1, iconList:[I
    :goto_2
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 569
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 573
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 551
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 558
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    goto :goto_2

    .line 562
    .end local v1           #iconList:[I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    goto :goto_2

    .line 565
    .end local v1           #iconList:[I
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    goto :goto_2
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 880
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 881
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 882
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 895
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 887
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 888
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 893
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 890
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020205

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 891
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f0200c4

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 890
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 845
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 847
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 876
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 877
    return-void

    :cond_1
    move v4, v5

    .line 847
    goto :goto_0

    .line 850
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 851
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 853
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 854
    .local v3, wasConnected:Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 856
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 858
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 859
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 860
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 862
    :cond_3
    if-eqz v1, :cond_5

    .line 863
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 854
    goto :goto_2

    .line 865
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 867
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 868
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 870
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #wasConnected:Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 872
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 940
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 941
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 942
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 945
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 954
    :goto_1
    return-void

    .line 944
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 948
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 952
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 915
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 916
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 917
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 918
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 920
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 934
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 936
    return-void

    :cond_1
    move v0, v1

    .line 920
    goto :goto_0

    .line 922
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 923
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 924
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 927
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 930
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 932
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 930
    goto :goto_2

    :cond_5
    move v0, v1

    .line 932
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 315
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 310
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1367
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1374
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1376
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1378
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1380
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1382
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1383
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1384
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1386
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1388
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1392
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1394
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1395
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1396
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1407
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1422
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1423
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1424
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1429
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1431
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1432
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1433
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1434
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1435
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1442
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1444
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1445
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1447
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1448
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1449
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1460
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1462
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1464
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1466
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1468
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1470
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1488
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    return-void

    .line 1368
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 710
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    .line 711
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 712
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_1

    .line 713
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 714
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 720
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 10
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v8, v9

    .line 354
    .local v8, wifiEnabled:Z
    :goto_0
    if-eqz v8, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 356
    .local v7, wifiDesc:Ljava/lang/String;
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v8, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 376
    return-void

    .end local v7           #wifiDesc:Ljava/lang/String;
    .end local v8           #wifiEnabled:Z
    :cond_1
    move v8, v1

    .line 353
    goto :goto_0

    .restart local v8       #wifiEnabled:Z
    :cond_2
    move-object v7, v6

    .line 354
    goto :goto_1

    .line 363
    .restart local v7       #wifiDesc:Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    .line 365
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    move v1, v9

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 394
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 400
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 402
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 404
    :cond_6
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 406
    :cond_7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 409
    :cond_8
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 7
    .parameter "cluster"

    .prologue
    const/4 v1, 0x1

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_3

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 349
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1

    .line 340
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_3
.end method

.method refreshViews()V
    .locals 15

    .prologue
    const v13, 0x7f0201a5

    const v12, 0x7f0200a8

    const v10, 0x7f0a00cd

    const/16 v11, 0x8

    const/4 v3, 0x0

    .line 1004
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 1008
    const-string v1, ""

    .line 1009
    const-string v0, ""

    .line 1010
    const-string v0, ""

    .line 1012
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v8

    .line 1014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_4

    .line 1015
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1016
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1017
    const-string v0, ""

    move v2, v3

    move v4, v3

    .line 1069
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_c

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1071
    const v1, 0x7f0a00ce

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1072
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 1094
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 1096
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 1097
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move v5, v4

    move v4, v2

    move-object v2, v1

    .line 1106
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v6, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v5, 0x7f0a005b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 1109
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00b1

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1113
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v9, 0x9

    if-ne v6, v9, :cond_e

    const/4 v6, 0x1

    .line 1114
    :goto_3
    if-eqz v6, :cond_1

    .line 1115
    const v2, 0x7f0a00db

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1118
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1123
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00b2

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1125
    const v6, 0x7f0201f0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 1126
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1127
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1130
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_f

    .line 1132
    const-string v0, ""

    move v6, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    .line 1195
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-ne v0, v7, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v7, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v7, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-ne v0, v7, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v7, :cond_17

    .line 1203
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 1204
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_5

    .line 1027
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1043
    :goto_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v2, :cond_a

    .line 1044
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1045
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v1, :pswitch_data_0

    .line 1056
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 1061
    :goto_7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 1062
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1063
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 1029
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-nez v0, :cond_6

    if-eqz v8, :cond_9

    .line 1030
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v8, :cond_8

    .line 1032
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_6

    .line 1035
    :cond_8
    const-string v0, ""

    goto :goto_6

    .line 1038
    :cond_9
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1047
    :pswitch_0
    const v1, 0x7f0201f1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 1050
    :pswitch_1
    const v1, 0x7f0201f5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 1053
    :pswitch_2
    const v1, 0x7f0201f2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 1065
    :cond_a
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move v2, v3

    move v4, v3

    goto/16 :goto_0

    .line 1074
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1078
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 1089
    :pswitch_3
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1080
    :pswitch_4
    const v2, 0x7f0201f9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1083
    :pswitch_5
    const v2, 0x7f0201fb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1086
    :pswitch_6
    const v2, 0x7f0201fa

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1099
    :cond_c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v5, :cond_d

    .line 1100
    const-string v5, ""

    move-object v14, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_2

    .line 1102
    :cond_d
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v14

    goto/16 :goto_2

    :cond_e
    move v6, v3

    .line 1113
    goto/16 :goto_3

    .line 1134
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_10

    .line 1136
    const-string v1, ""

    .line 1141
    :goto_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1142
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move v6, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1138
    :cond_10
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1139
    goto :goto_8

    .line 1145
    :cond_11
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v9, :cond_2c

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v9, :cond_2c

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v9, :cond_2c

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v9, :cond_2c

    if-nez v6, :cond_2c

    .line 1148
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1150
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1152
    :goto_9
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_a
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1155
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1156
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1159
    iput v13, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1160
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move-object v5, v6

    move v6, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1150
    :cond_12
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_9

    .line 1152
    :cond_13
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_a

    .line 1162
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1163
    iput v13, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1164
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    :cond_15
    move-object v5, v6

    move v6, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1206
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1207
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_b

    .line 1211
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v7, :cond_18

    .line 1212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 1216
    :cond_18
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-eq v0, v7, :cond_1a

    .line 1217
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v3

    .line 1219
    :goto_c
    if-ge v7, v9, :cond_1a

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1221
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-nez v10, :cond_19

    .line 1222
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    :goto_d
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    .line 1224
    :cond_19
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1225
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1226
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1232
    :cond_1a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    if-eq v0, v7, :cond_1b

    .line 1233
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v3

    .line 1235
    :goto_e
    if-ge v7, v9, :cond_1b

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1237
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1238
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1235
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_e

    .line 1243
    :cond_1b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v7, :cond_1d

    .line 1244
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 1245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v3

    .line 1246
    :goto_f
    if-ge v7, v9, :cond_1d

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1248
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-nez v10, :cond_1c

    .line 1249
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    :goto_10
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_f

    .line 1251
    :cond_1c
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1252
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1253
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1259
    :cond_1d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v7, :cond_1f

    .line 1260
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v3

    .line 1262
    :goto_11
    if-ge v7, v9, :cond_1f

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1264
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-nez v10, :cond_1e

    .line 1265
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1262
    :goto_12
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_11

    .line 1267
    :cond_1e
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1269
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 1274
    :cond_1f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    if-eq v0, v6, :cond_20

    .line 1275
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v3

    .line 1277
    :goto_13
    if-ge v7, v9, :cond_20

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1279
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1280
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1277
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_13

    .line 1285
    :cond_20
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-eq v0, v6, :cond_22

    .line 1286
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v3

    .line 1288
    :goto_14
    if-ge v6, v7, :cond_22

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1290
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-nez v9, :cond_21

    .line 1291
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1288
    :goto_15
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_14

    .line 1293
    :cond_21
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1295
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1301
    :cond_22
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    if-eq v0, v4, :cond_24

    .line 1305
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v3

    .line 1307
    :goto_16
    if-ge v6, v7, :cond_24

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1309
    if-nez v4, :cond_23

    .line 1310
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1307
    :goto_17
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16

    .line 1312
    :cond_23
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1313
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1314
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 1320
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1321
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 1323
    :goto_18
    if-ge v4, v6, :cond_25

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1325
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    .line 1330
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    .line 1331
    :goto_19
    if-ge v4, v5, :cond_27

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1333
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1335
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    :goto_1a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 1337
    :cond_26
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 1342
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1343
    :goto_1b
    if-ge v2, v4, :cond_29

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1345
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1347
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    :goto_1c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 1349
    :cond_28
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c

    .line 1354
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1355
    :goto_1d
    if-ge v2, v4, :cond_2b

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1357
    if-nez v8, :cond_2a

    .line 1358
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1355
    :goto_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 1360
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 1364
    :cond_2b
    return-void

    :cond_2c
    move v6, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    .line 1045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1078
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 799
    .local v0, something:Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 800
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const/4 v0, 0x1

    .line 803
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 804
    if-eqz v0, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    const/4 v0, 0x1

    .line 810
    :cond_2
    if-eqz v0, :cond_3

    .line 811
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
