.class Lcom/android/systemui/quicksettings/ProfileTile$3;
.super Ljava/lang/Object;
.source "ProfileTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/ProfileTile;->createProfileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/ProfileTile;

.field final synthetic val$profileManager:Landroid/app/ProfileManager;

.field final synthetic val$profiles:[Landroid/app/Profile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/ProfileTile;[Landroid/app/Profile;Landroid/app/ProfileManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->val$profiles:[Landroid/app/Profile;

    iput-object p3, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->val$profileManager:Landroid/app/ProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    if-gez p2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->val$profiles:[Landroid/app/Profile;

    aget-object v1, v1, p2

    #setter for: Lcom/android/systemui/quicksettings/ProfileTile;->mChosenProfile:Landroid/app/Profile;
    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/ProfileTile;->access$102(Lcom/android/systemui/quicksettings/ProfileTile;Landroid/app/Profile;)Landroid/app/Profile;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->val$profileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/ProfileTile$3;->this$0:Lcom/android/systemui/quicksettings/ProfileTile;

    #getter for: Lcom/android/systemui/quicksettings/ProfileTile;->mChosenProfile:Landroid/app/Profile;
    invoke-static {v1}, Lcom/android/systemui/quicksettings/ProfileTile;->access$100(Lcom/android/systemui/quicksettings/ProfileTile;)Landroid/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
