-- AlterTable
ALTER TABLE "Content" ADD COLUMN     "conten_id" INTEGER,
ADD COLUMN     "description" TEXT NOT NULL DEFAULT E'',
ADD COLUMN     "media_id" TEXT,
ADD COLUMN     "name" TEXT NOT NULL DEFAULT E'';

-- CreateIndex
CREATE INDEX "Content_media_id_idx" ON "Content"("media_id");

-- AddForeignKey
ALTER TABLE "Content" ADD CONSTRAINT "Content_media_id_fkey" FOREIGN KEY ("media_id") REFERENCES "MediaTable"("id") ON DELETE SET NULL ON UPDATE CASCADE;
