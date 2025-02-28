package ec.edu.espe.cimed.patientservice.config;

import lombok.*;

@Data
@Builder
@AllArgsConstructor

public class JwtAuthError {
    private int status;
    private String message;
    private String exceptionClass;

}
