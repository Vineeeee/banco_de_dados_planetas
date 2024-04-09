-- CreateTable
CREATE TABLE "crews" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100),
    "bio" VARCHAR(300),
    "role" VARCHAR(100),

    CONSTRAINT "crews_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "destinations" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100),
    "description" VARCHAR(300),
    "distance" VARCHAR(100),
    "travel" VARCHAR(100),

    CONSTRAINT "destinations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tecnologies" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100),
    "description" VARCHAR(300),

    CONSTRAINT "tecnologies_pkey" PRIMARY KEY ("id")
);
