**free

ctl-opt dftactgrp(*no);

dcl-pi P3072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P2571.rpgleinc'

dcl-ds theTable extname('T1786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1786 LIMIT 1;

theCharVar = 'Hello from P3072';
dsply theCharVar;
callp localProc();
P974();
P35();
P2571();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3072 in the procedure';
end-proc;