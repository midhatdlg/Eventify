// lib/prisma.js
import { PrismaClient } from '@prisma/client'; // Import PrismaClient from the @prisma/client package

// Create a new instance of PrismaClient
const prisma = new PrismaClient(); 

// Export the Prisma client instance for use in other parts of your application
export default prisma;
