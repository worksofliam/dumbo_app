**free

ctl-opt dftactgrp(*no);

dcl-pi P1031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'

dcl-ds theTable extname('T2') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T2 LIMIT 1;

theCharVar = 'Hello from P1031';
dsply theCharVar;
callp localProc();
P655();
P341();
P666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1031 in the procedure';
end-proc;