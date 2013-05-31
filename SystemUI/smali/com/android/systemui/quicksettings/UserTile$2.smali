.class Lcom/android/systemui/quicksettings/UserTile$2;
.super Landroid/os/AsyncTask;
.source "UserTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UserTile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UserTile;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userId:I

    iput-object p4, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 13
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 109
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 118
    .local v11, um:Landroid/os/UserManager;
    iget-object v9, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userName:Ljava/lang/String;

    .line 119
    .local v9, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 120
    .local v6, avatar:Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userId:I

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 121
    .local v10, rawAvatar:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 122
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #avatar:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 129
    .restart local v6       #avatar:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v12, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "display_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 136
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 140
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 110
    .end local v6           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #rawAvatar:Landroid/graphics/Bitmap;
    .end local v11           #um:Landroid/os/UserManager;
    :catch_0
    move-exception v8

    .line 111
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v8           #e:Ljava/lang/InterruptedException;
    .restart local v6       #avatar:Landroid/graphics/drawable/Drawable;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #rawAvatar:Landroid/graphics/Bitmap;
    .restart local v11       #um:Landroid/os/UserManager;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 140
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/quicksettings/UserTile$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/quicksettings/UserTile;->setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/UserTile;->access$002(Lcom/android/systemui/quicksettings/UserTile;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/quicksettings/UserTile$2;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
