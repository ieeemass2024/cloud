package com.example.gateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.server.ServerWebExchange;
import org.springframework.web.server.WebExceptionHandler;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.core.annotation.Order;
import reactor.core.publisher.Mono;

@Configuration
public class ExceptionHandlerConfig {

    @Bean
    @Order(-2)
    public WebExceptionHandler globalExceptionHandler() {
        return (exchange, ex) -> {
            if (ex instanceof ResponseStatusException) {
                if (((ResponseStatusException) ex).getStatusCode() == HttpStatus.UNAUTHORIZED) {
                    return handleUnauthorized(exchange);
                }
            }
            return Mono.error(ex);
        };
    }

    private Mono<Void> handleUnauthorized(ServerWebExchange exchange) {
        exchange.getResponse().setStatusCode(HttpStatus.UNAUTHORIZED);
        return exchange.getResponse().setComplete();
    }
}
