**free

ctl-opt dftactgrp(*no);

dcl-pi P3403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1595.rpgleinc'
/copy 'qrpgleref/P3384.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T534 LIMIT 1;

theCharVar = 'Hello from P3403';
dsply theCharVar;
callp localProc();
P1595();
P3384();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3403 in the procedure';
end-proc;