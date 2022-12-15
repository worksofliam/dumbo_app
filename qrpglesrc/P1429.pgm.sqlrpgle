**free

ctl-opt dftactgrp(*no);

dcl-pi P1429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P468.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P1429';
dsply theCharVar;
callp localProc();
P468();
P174();
P905();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1429 in the procedure';
end-proc;