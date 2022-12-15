**free

ctl-opt dftactgrp(*no);

dcl-pi P1010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P1010';
dsply theCharVar;
callp localProc();
P736();
P100();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1010 in the procedure';
end-proc;