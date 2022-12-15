**free

ctl-opt dftactgrp(*no);

dcl-pi P2287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2104.rpgleinc'
/copy 'qrpgleref/P1790.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T405 LIMIT 1;

theCharVar = 'Hello from P2287';
dsply theCharVar;
callp localProc();
P2104();
P1790();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2287 in the procedure';
end-proc;