**free

ctl-opt dftactgrp(*no);

dcl-pi P1333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1304.rpgleinc'
/copy 'qrpgleref/P1148.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P1333';
dsply theCharVar;
callp localProc();
P1304();
P1148();
P1135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1333 in the procedure';
end-proc;