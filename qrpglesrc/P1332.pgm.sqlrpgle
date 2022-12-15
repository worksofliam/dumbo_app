**free

ctl-opt dftactgrp(*no);

dcl-pi P1332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P1030.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P1332';
dsply theCharVar;
callp localProc();
P558();
P256();
P1030();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1332 in the procedure';
end-proc;