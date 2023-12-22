/*
  Warnings:

  - You are about to drop the column `img_url` on the `User_Preferences` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[user_Id]` on the table `User_Preferences` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Outfit_occasion_key";

-- DropIndex
DROP INDEX "Outfit_style_type_key";

-- DropIndex
DROP INDEX "Pants_occasion_key";

-- DropIndex
DROP INDEX "Pants_style_type_key";

-- DropIndex
DROP INDEX "Shirts_occasion_key";

-- DropIndex
DROP INDEX "Shirts_style_type_key";

-- DropIndex
DROP INDEX "User_Preferences_occasion_key";

-- DropIndex
DROP INDEX "User_Preferences_style_type_key";

-- AlterTable
ALTER TABLE "User_Preferences" DROP COLUMN "img_url",
ALTER COLUMN "weather_compatibility" DROP NOT NULL,
ALTER COLUMN "occasion" DROP NOT NULL,
ALTER COLUMN "category_Id" DROP NOT NULL,
ALTER COLUMN "color" DROP NOT NULL,
ALTER COLUMN "body_type" DROP NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "User_Preferences_user_Id_key" ON "User_Preferences"("user_Id");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_id_fkey" FOREIGN KEY ("id") REFERENCES "User_Preferences"("user_Id") ON DELETE RESTRICT ON UPDATE CASCADE;
