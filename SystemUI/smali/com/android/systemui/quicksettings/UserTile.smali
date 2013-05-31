.class public Lcom/android/systemui/quicksettings/UserTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "UserTile.java"


# instance fields
.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private userAvatar:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .parameter "context"
    .parameter "qsc"

    .prologue
    .line 38
    const v0, 0x7f04001d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 40
    new-instance v0, Lcom/android/systemui/quicksettings/UserTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UserTile$1;-><init>(Lcom/android/systemui/quicksettings/UserTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UserTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 59
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 60
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/quicksettings/UserTile;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, currentUserContext:Landroid/content/Context;
    const/4 v4, 0x0

    .line 91
    .local v4, userInfo:Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 92
    iget-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 100
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 101
    .local v3, userId:I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 103
    .local v5, userName:Ljava/lang/String;
    move-object v0, v1

    .line 104
    .local v0, context:Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/quicksettings/UserTile$2;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/quicksettings/UserTile$2;-><init>(Lcom/android/systemui/quicksettings/UserTile;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 154
    iget-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void

    .line 94
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #userId:I
    .end local v5           #userName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "UserTile"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 97
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 98
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "UserTile"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 71
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 72
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 66
    return-void
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "name"
    .parameter "avatar"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile;->mLabel:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/android/systemui/quicksettings/UserTile;->userAvatar:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/UserTile;->updateQuickSettings()V

    .line 161
    return-void
.end method

.method updateQuickSettings()V
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->userAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 77
    return-void
.end method
