**free

ctl-opt dftactgrp(*no);

dcl-pi P1306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P803.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T1761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1761 LIMIT 1;

theCharVar = 'Hello from P1306';
dsply theCharVar;
callp localProc();
P723();
P803();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1306 in the procedure';
end-proc;