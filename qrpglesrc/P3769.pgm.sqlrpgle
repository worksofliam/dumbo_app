**free

ctl-opt dftactgrp(*no);

dcl-pi P3769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3179.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P1174.rpgleinc'

dcl-ds theTable extname('T520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T520 LIMIT 1;

theCharVar = 'Hello from P3769';
dsply theCharVar;
callp localProc();
P3179();
P1494();
P1174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3769 in the procedure';
end-proc;