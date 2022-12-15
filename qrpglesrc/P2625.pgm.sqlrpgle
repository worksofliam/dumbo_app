**free

ctl-opt dftactgrp(*no);

dcl-pi P2625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1317.rpgleinc'
/copy 'qrpgleref/P2479.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P2625';
dsply theCharVar;
callp localProc();
P1317();
P2479();
P369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2625 in the procedure';
end-proc;