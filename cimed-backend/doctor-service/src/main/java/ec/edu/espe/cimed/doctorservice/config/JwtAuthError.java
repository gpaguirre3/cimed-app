package ec.edu.espe.cimed.doctorservice.config;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
public class JwtAuthError {
    private int status;
    private String message;
    private String exceptionClass;
}
