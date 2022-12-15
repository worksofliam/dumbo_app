**free

ctl-opt dftactgrp(*no);

dcl-pi P432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P432';
dsply theCharVar;
callp localProc();
P62();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P432 in the procedure';
end-proc;