**free

ctl-opt dftactgrp(*no);

dcl-pi P974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T518') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T518 LIMIT 1;

theCharVar = 'Hello from P974';
dsply theCharVar;
callp localProc();
P275();
P755();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P974 in the procedure';
end-proc;