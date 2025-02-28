package ec.edu.espe.cimed.appointmentservice.config;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class JwtAuthError {
    private int status;
    private String message;
    private String exceptionClass;

}
