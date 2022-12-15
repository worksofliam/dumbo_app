**free

ctl-opt dftactgrp(*no);

dcl-pi P4389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2712.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P3605.rpgleinc'

dcl-ds theTable extname('T1070') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1070 LIMIT 1;

theCharVar = 'Hello from P4389';
dsply theCharVar;
callp localProc();
P2712();
P479();
P3605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4389 in the procedure';
end-proc;