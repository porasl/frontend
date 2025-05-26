package com.porasl.frontend.kafka;

import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class KafkaMessagePublisher {

    private final KafkaTemplate<String, String> kafkaTemplate;

    public KafkaMessagePublisher(KafkaTemplate<String, String> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    public void sendVideoMessage(String videoJson) {
        kafkaTemplate.send("video-uploads", videoJson);
    }
    
    public void sendAttachItemMessage(String videoJson) {
        kafkaTemplate.send("attach-uploads", videoJson);
    }
    
    
}

