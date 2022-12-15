**free

ctl-opt dftactgrp(*no);

dcl-pi P3158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1112.rpgleinc'
/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P3158';
dsply theCharVar;
callp localProc();
P1112();
P1399();
P1565();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3158 in the procedure';
end-proc;