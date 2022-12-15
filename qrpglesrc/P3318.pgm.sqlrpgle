**free

ctl-opt dftactgrp(*no);

dcl-pi P3318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P2895.rpgleinc'
/copy 'qrpgleref/P2870.rpgleinc'

dcl-ds theTable extname('T1287') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1287 LIMIT 1;

theCharVar = 'Hello from P3318';
dsply theCharVar;
callp localProc();
P785();
P2895();
P2870();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3318 in the procedure';
end-proc;