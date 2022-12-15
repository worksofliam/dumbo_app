**free

ctl-opt dftactgrp(*no);

dcl-pi P1113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P1113';
dsply theCharVar;
callp localProc();
P416();
P759();
P1010();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1113 in the procedure';
end-proc;