**free

ctl-opt dftactgrp(*no);

dcl-pi P1672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'

dcl-ds theTable extname('T780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T780 LIMIT 1;

theCharVar = 'Hello from P1672';
dsply theCharVar;
callp localProc();
P256();
P568();
P1572();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1672 in the procedure';
end-proc;