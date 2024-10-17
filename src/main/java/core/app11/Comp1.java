package core.app11;

import lombok.Getter;
import org.springframework.stereotype.Component;

@Component
@Getter
public class Comp1 {
    final Comp2 comp2;

    public Comp1(Comp2 comp2) {
        this.comp2 = comp2;
    }
}
