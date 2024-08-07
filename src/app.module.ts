import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeormModule } from './config/typeorm.config';
import { ProductModule } from './controller/api/product/product.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    ProductModule,
    TypeormModule
  ],
  controllers: [],
  providers: [],
})
export class AppModule {
  static port: string
  constructor(configService: ConfigService) {
    AppModule.port = configService.get('SERVER_PORT')
  }
}
