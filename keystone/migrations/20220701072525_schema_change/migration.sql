/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tag` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tweet` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_Post_tags` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_User_likes` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_author_fkey";

-- DropForeignKey
ALTER TABLE "_Post_tags" DROP CONSTRAINT "_Post_tags_A_fkey";

-- DropForeignKey
ALTER TABLE "_Post_tags" DROP CONSTRAINT "_Post_tags_B_fkey";

-- DropForeignKey
ALTER TABLE "_User_likes" DROP CONSTRAINT "_User_likes_A_fkey";

-- DropForeignKey
ALTER TABLE "_User_likes" DROP CONSTRAINT "_User_likes_B_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "last_name" TEXT NOT NULL DEFAULT E'',
ADD COLUMN     "user_id" INTEGER,
ADD COLUMN     "user_type" TEXT NOT NULL DEFAULT E'';

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Tag";

-- DropTable
DROP TABLE "Tweet";

-- DropTable
DROP TABLE "_Post_tags";

-- DropTable
DROP TABLE "_User_likes";
