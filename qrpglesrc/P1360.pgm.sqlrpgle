**free

ctl-opt dftactgrp(*no);

dcl-pi P1360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P953.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'

dcl-ds theTable extname('T150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T150 LIMIT 1;

theCharVar = 'Hello from P1360';
dsply theCharVar;
callp localProc();
P953();
P597();
P270();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1360 in the procedure';
end-proc;