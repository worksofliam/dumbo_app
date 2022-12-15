**free

ctl-opt dftactgrp(*no);

dcl-pi P3273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3102.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P1951.rpgleinc'

dcl-ds theTable extname('T1608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1608 LIMIT 1;

theCharVar = 'Hello from P3273';
dsply theCharVar;
callp localProc();
P3102();
P1677();
P1951();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3273 in the procedure';
end-proc;