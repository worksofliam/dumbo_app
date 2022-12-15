**free

ctl-opt dftactgrp(*no);

dcl-pi P1886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P1376.rpgleinc'

dcl-ds theTable extname('T975') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T975 LIMIT 1;

theCharVar = 'Hello from P1886';
dsply theCharVar;
callp localProc();
P439();
P1216();
P1376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1886 in the procedure';
end-proc;