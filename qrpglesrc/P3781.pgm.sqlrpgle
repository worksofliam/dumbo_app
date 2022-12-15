**free

ctl-opt dftactgrp(*no);

dcl-pi P3781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3140.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P1684.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P3781';
dsply theCharVar;
callp localProc();
P3140();
P920();
P1684();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3781 in the procedure';
end-proc;