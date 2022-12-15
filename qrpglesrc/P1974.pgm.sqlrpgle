**free

ctl-opt dftactgrp(*no);

dcl-pi P1974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'
/copy 'qrpgleref/P1406.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P1974';
dsply theCharVar;
callp localProc();
P1264();
P1882();
P1406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1974 in the procedure';
end-proc;