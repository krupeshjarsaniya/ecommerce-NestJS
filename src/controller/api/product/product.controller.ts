import { CacheInterceptor } from '@nestjs/cache-manager';
import { Controller, Get, Param, Query, UseInterceptors } from '@nestjs/common';
import { Product } from 'src/entity/product.entity';
import { ProductService } from './product.service';


@Controller('api/products')
export class ProductController {
  constructor(private readonly productService: ProductService) {}

  // search product
  @Get('')
  @UseInterceptors(CacheInterceptor)
  async search(@Query('name') name: string): Promise<Product[]> {
    return this.productService.searchProducts(name);
  }

  //product details
  @Get(':id')
  @UseInterceptors(CacheInterceptor)
  async getCountry(@Param('id') id: number): Promise<Product> {
    return this.productService.getProductById(id);
  }

}
