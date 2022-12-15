**free

ctl-opt dftactgrp(*no);

dcl-pi P1425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P1425';
dsply theCharVar;
callp localProc();
P875();
P276();
P1300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1425 in the procedure';
end-proc;