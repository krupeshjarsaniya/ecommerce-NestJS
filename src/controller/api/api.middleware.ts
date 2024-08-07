import { Injectable, NestMiddleware, UnauthorizedException } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { Request, Response, NextFunction } from 'express';

@Injectable()
export class ApiMiddleware implements NestMiddleware {
    private readonly apiKey: string;

    constructor(private configService: ConfigService) {
        this.apiKey = this.configService.get<string>('API_KEY');
    }
    use(req: Request, res: Response, next: NextFunction) {
        const apiKey = req.headers['api_key'] as string;
        if (apiKey && apiKey === this.apiKey) {
            next();
        } else {
            throw new UnauthorizedException('Invalid API key');
        }
    }
}
