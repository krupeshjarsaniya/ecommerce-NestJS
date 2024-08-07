import { IsString, IsNotEmpty } from 'class-validator';

export class ProductDto {
  @IsString()
  @IsNotEmpty()
  id: number;

  @IsString()
  @IsNotEmpty()
  name: string;
  
  @IsString()
  @IsNotEmpty()
  description: string;

  @IsString()
  @IsNotEmpty()
  price: number;

  @IsString()
  @IsNotEmpty()
  stock: number;

  @IsString()
  @IsNotEmpty()
  images: string[];

  @IsString()
  @IsNotEmpty()
  created_at: Date;

  @IsString()
  @IsNotEmpty()
  updated_at: Date;
}

export default ProductDto; 