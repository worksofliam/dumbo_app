**free

ctl-opt dftactgrp(*no);

dcl-pi P5621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5181.rpgleinc'
/copy 'qrpgleref/P1413.rpgleinc'
/copy 'qrpgleref/P2138.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P5621';
dsply theCharVar;
callp localProc();
P5181();
P1413();
P2138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5621 in the procedure';
end-proc;