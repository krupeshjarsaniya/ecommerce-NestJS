import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Product } from 'src/entity/product.entity';
import { Like, Repository } from 'typeorm';

@Injectable()
export class ProductService {
    constructor(
        @InjectRepository(Product)
        private productsRepository: Repository<Product>,
    ) { }

    async searchProducts(name: string): Promise<Product[]> {
        return this.productsRepository.find({
            where: { name: Like(`%${name}%`) },
        });
    }

    async getProductById(id: number): Promise<Product> {
        return this.productsRepository.findOne({ where: { id } });
    }

}