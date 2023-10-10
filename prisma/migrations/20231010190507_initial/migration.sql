-- CreateTable
CREATE TABLE "destinations" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "description" VARCHAR(500) NOT NULL,
    "distance" VARCHAR(200) NOT NULL,
    "travel" VARCHAR(200) NOT NULL,

    CONSTRAINT "destinations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "crews" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "bio" VARCHAR(500) NOT NULL,
    "role" VARCHAR(200) NOT NULL,

    CONSTRAINT "crews_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tecnologies" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "description" VARCHAR(500) NOT NULL,

    CONSTRAINT "tecnologies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "home" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "home_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shared" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "shared_pkey" PRIMARY KEY ("id")
);
