import { MiddlewareConsumer, Module, NestModule } from '@nestjs/common';
import { ProductController } from './product.controller';
import { ProductService } from './product.service';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Product } from 'src/entity/product.entity';
import { CacheModule } from '@nestjs/cache-manager';
import { ApiMiddleware } from '../api.middleware';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forFeature([Product]),
    CacheModule.register({
      ttl: 60, // seconds
      max: 50, // maximum number of items in cache
    }),
  ],
  controllers: [ProductController],
  providers: [ProductService],
  exports: [ProductService],
})

export class ProductModule implements NestModule {
  public configure(consumer: MiddlewareConsumer) {
    consumer
      .apply(ApiMiddleware)
      .forRoutes('api');
  }
}