```vhdl
ENTITY counter IS
  PORT (
    clk : IN  STD_LOGIC;
    rst : IN  STD_LOGIC;
    enable : IN STD_LOGIC;
    count : OUT INTEGER RANGE 0 TO 15
  );
END ENTITY;

ARCHITECTURE behavioral OF counter IS
  SIGNAL temp_count : INTEGER RANGE 0 TO 15 := 0;
  SIGNAL enable_reg : STD_LOGIC := '0'; -- Synchronous enable register
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      temp_count <= 0;
      enable_reg <= '0';
    ELSIF rising_edge(clk) THEN
      enable_reg <= enable;
      IF enable_reg = '1' THEN
        temp_count <= temp_count + 1;
      END IF;
    END IF;
  END PROCESS;
  count <= temp_count;
END ARCHITECTURE;
```