/*
  Warnings:

  - You are about to alter the column `name` on the `crews` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `bio` on the `crews` table. The data in that column could be lost. The data in that column will be cast from `VarChar(500)` to `VarChar(200)`.
  - You are about to alter the column `role` on the `crews` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `name` on the `destinations` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `description` on the `destinations` table. The data in that column could be lost. The data in that column will be cast from `VarChar(500)` to `VarChar(300)`.
  - You are about to alter the column `distance` on the `destinations` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `travel` on the `destinations` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `name` on the `tecnologies` table. The data in that column could be lost. The data in that column will be cast from `VarChar(200)` to `VarChar(100)`.
  - You are about to alter the column `description` on the `tecnologies` table. The data in that column could be lost. The data in that column will be cast from `VarChar(500)` to `VarChar(300)`.
  - You are about to drop the `home` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `shared` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE "crews" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "bio" DROP NOT NULL,
ALTER COLUMN "bio" SET DATA TYPE VARCHAR(200),
ALTER COLUMN "role" DROP NOT NULL,
ALTER COLUMN "role" SET DATA TYPE VARCHAR(100);

-- AlterTable
ALTER TABLE "destinations" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "description" SET DATA TYPE VARCHAR(300),
ALTER COLUMN "distance" DROP NOT NULL,
ALTER COLUMN "distance" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "travel" DROP NOT NULL,
ALTER COLUMN "travel" SET DATA TYPE VARCHAR(100);

-- AlterTable
ALTER TABLE "tecnologies" ALTER COLUMN "name" DROP NOT NULL,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "description" SET DATA TYPE VARCHAR(300);

-- DropTable
DROP TABLE "home";

-- DropTable
DROP TABLE "shared";
