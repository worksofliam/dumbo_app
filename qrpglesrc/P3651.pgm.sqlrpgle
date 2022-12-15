**free

ctl-opt dftactgrp(*no);

dcl-pi P3651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3180.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P2726.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P3651';
dsply theCharVar;
callp localProc();
P3180();
P287();
P2726();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3651 in the procedure';
end-proc;