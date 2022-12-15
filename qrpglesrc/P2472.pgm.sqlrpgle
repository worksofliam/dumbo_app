**free

ctl-opt dftactgrp(*no);

dcl-pi P2472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P833.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T1246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1246 LIMIT 1;

theCharVar = 'Hello from P2472';
dsply theCharVar;
callp localProc();
P736();
P833();
P133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2472 in the procedure';
end-proc;