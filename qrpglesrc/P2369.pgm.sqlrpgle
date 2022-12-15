**free

ctl-opt dftactgrp(*no);

dcl-pi P2369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1369.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'

dcl-ds theTable extname('T752') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T752 LIMIT 1;

theCharVar = 'Hello from P2369';
dsply theCharVar;
callp localProc();
P1369();
P479();
P834();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2369 in the procedure';
end-proc;