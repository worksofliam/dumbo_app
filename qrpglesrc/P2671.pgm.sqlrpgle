**free

ctl-opt dftactgrp(*no);

dcl-pi P2671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1531.rpgleinc'
/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds theTable extname('T1516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1516 LIMIT 1;

theCharVar = 'Hello from P2671';
dsply theCharVar;
callp localProc();
P1531();
P928();
P885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2671 in the procedure';
end-proc;