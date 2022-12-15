**free

ctl-opt dftactgrp(*no);

dcl-pi P3771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2572.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P3600.rpgleinc'

dcl-ds theTable extname('T1500') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1500 LIMIT 1;

theCharVar = 'Hello from P3771';
dsply theCharVar;
callp localProc();
P2572();
P133();
P3600();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3771 in the procedure';
end-proc;