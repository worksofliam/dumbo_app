**free

ctl-opt dftactgrp(*no);

dcl-pi P372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P372';
dsply theCharVar;
callp localProc();
P284();
P91();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P372 in the procedure';
end-proc;