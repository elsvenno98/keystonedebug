-- CreateTable
CREATE TABLE "MediaTable" (
    "id" TEXT NOT NULL,
    "media_id" INTEGER,
    "image" TEXT NOT NULL DEFAULT E'',
    "video" TEXT NOT NULL DEFAULT E'',
    "text" TEXT NOT NULL DEFAULT E'',

    CONSTRAINT "MediaTable_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Content" (
    "id" TEXT NOT NULL,

    CONSTRAINT "Content_pkey" PRIMARY KEY ("id")
);
