-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Outfit" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "weather_compatibility" TEXT NOT NULL,
    "occasion" TEXT NOT NULL,
    "style_type" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "forMen" BOOLEAN NOT NULL,
    "category_Id" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "body_type" TEXT NOT NULL,

    CONSTRAINT "Outfit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User_Preferences" (
    "id" SERIAL NOT NULL,
    "user_Id" INTEGER NOT NULL,
    "weather_compatibility" TEXT NOT NULL,
    "occasion" TEXT NOT NULL,
    "style_type" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "forMen" BOOLEAN NOT NULL,
    "category_Id" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "body_type" TEXT NOT NULL,

    CONSTRAINT "User_Preferences_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pants" (
    "id" SERIAL NOT NULL,
    "weather_compatibility" TEXT NOT NULL,
    "occasion" TEXT NOT NULL,
    "style_type" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "forMen" BOOLEAN NOT NULL,
    "category_Id" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "body_type" TEXT NOT NULL,

    CONSTRAINT "Pants_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Shirts" (
    "id" SERIAL NOT NULL,
    "weather_compatibility" TEXT NOT NULL,
    "occasion" TEXT NOT NULL,
    "style_type" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "forMen" BOOLEAN NOT NULL,
    "category_Id" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "body_type" TEXT NOT NULL,

    CONSTRAINT "Shirts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Categories" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Categories_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Outfit_occasion_key" ON "Outfit"("occasion");

-- CreateIndex
CREATE UNIQUE INDEX "Outfit_style_type_key" ON "Outfit"("style_type");

-- CreateIndex
CREATE UNIQUE INDEX "User_Preferences_occasion_key" ON "User_Preferences"("occasion");

-- CreateIndex
CREATE UNIQUE INDEX "User_Preferences_style_type_key" ON "User_Preferences"("style_type");

-- CreateIndex
CREATE UNIQUE INDEX "Pants_occasion_key" ON "Pants"("occasion");

-- CreateIndex
CREATE UNIQUE INDEX "Pants_style_type_key" ON "Pants"("style_type");

-- CreateIndex
CREATE UNIQUE INDEX "Shirts_occasion_key" ON "Shirts"("occasion");

-- CreateIndex
CREATE UNIQUE INDEX "Shirts_style_type_key" ON "Shirts"("style_type");
