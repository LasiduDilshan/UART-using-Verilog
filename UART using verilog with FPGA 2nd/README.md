### Seven-Segment Display Mapping

A seven-segment display consists of 7 LEDs labeled as follows:

```
    a
   ---
f |   | b
  | g |
   ---
e |   | c
  | d |
   ---
```

For common anode displays:
- `a` -> `seg[6]`
- `b` -> `seg[5]`
- `c` -> `seg[4]`
- `d` -> `seg[3]`
- `e` -> `seg[2]`
- `f` -> `seg[1]`
- `g` -> `seg[0]`

### Seven-Segment Decoder Values

Here are the binary values for each digit (0-9) for a common anode display:

- `0` -> `7'b0111111` (segments a, b, c, d, e, f)
- `1` -> `7'b0000110` (segments b, c)
- `2` -> `7'b1011011` (segments a, b, d, e, g)
- `3` -> `7'b1001111` (segments a, b, c, d, g)
- `4` -> `7'b1100110` (segments b, c, f, g)
- `5` -> `7'b1101101` (segments a, c, d, f, g)
- `6` -> `7'b1111101` (segments a, c, d, e, f, g)
- `7` -> `7'b0000111` (segments a, b, c)
- `8` -> `7'b1111111` (all segments)
- `9` -> `7'b1101111` (segments a, b, c, d, f, g)

### Explanation of the Hundreds, Tens, Units Approach

#### Objective:
To display an 8-bit number (0-255) on three seven-segment displays. The first display shows the hundreds digit, the second display shows the tens digit, and the third display shows the units digit.

#### Steps:
1. **Extract Hundreds Digit:**
   - Calculate the hundreds digit as `hundreds = data_out / 100`.
2. **Extract Tens Digit:**
   - Calculate the tens digit as `tens = (data_out % 100) / 10`.
3. **Extract Units Digit:**
   - Calculate the units digit as `units = data_out % 10`.
4. **Decode Each Digit:**
   - Use a seven-segment decoder to convert each digit into its corresponding segment pattern.

#### Example:
Let's use the number 142 as an example:

1. **Given Data:**
   - `data_out = 8'b10001110` (which is 142 in decimal).

2. **Calculate Digits:**
   - **Hundreds Digit:**
     - `hundreds = 142 / 100 = 1`
   - **Tens Digit:**
     - `tens = (142 % 100) / 10 = 4`
   - **Units Digit:**
     - `units = 142 % 10 = 2`

3. **Segment Patterns for Each Digit:**
   - **Hundreds Digit (1):**
     - Segment pattern for 1: `7'b0000110` (segments b, c).
   - **Tens Digit (4):**
     - Segment pattern for 4: `7'b1100110` (segments b, c, f, g).
   - **Units Digit (2):**
     - Segment pattern for 2: `7'b1011011` (segments a, b, d, e, g).

4. **Resulting Display:**
   - The first seven-segment display shows `1`.
   - The second seven-segment display shows `4`.
   - The third seven-segment display shows `2`.

### Summary

This setup uses the UART module to receive an 8-bit number and splits it into hundreds, tens, and units digits. Each digit is then displayed on its respective seven-segment display using a seven-segment decoder. For example, the number 142 is displayed as `1` on the first display, `4` on the second display, and `2` on the third display.
