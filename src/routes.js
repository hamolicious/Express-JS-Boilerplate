import express from 'express';
import indexRouter from './routers/index.js';

export const router = express.Router();

router.get('/', indexRouter);
