**free

ctl-opt dftactgrp(*no);

dcl-pi P3135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P2168.rpgleinc'
/copy 'qrpgleref/P2260.rpgleinc'

dcl-ds theTable extname('T1688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1688 LIMIT 1;

theCharVar = 'Hello from P3135';
dsply theCharVar;
callp localProc();
P1987();
P2168();
P2260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3135 in the procedure';
end-proc;