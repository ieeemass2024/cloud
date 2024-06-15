package com.example.item.config;

import brave.Tracing;
import brave.propagation.CurrentTraceContext;
import brave.propagation.ThreadLocalCurrentTraceContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TracingConfig {

    @Bean
    public Tracing braveTracing(CurrentTraceContext currentTraceContext) {
        return Tracing.newBuilder()
                .currentTraceContext(currentTraceContext)
                .build();
    }

    @Bean
    public brave.Tracer braveTracer(Tracing braveTracing) {
        return braveTracing.tracer();
    }

    @Bean
    public CurrentTraceContext currentTraceContext() {
        return ThreadLocalCurrentTraceContext.newBuilder().build();
    }
}
