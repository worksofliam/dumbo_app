**free

ctl-opt dftactgrp(*no);

dcl-pi P2340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P2110.rpgleinc'
/copy 'qrpgleref/P2051.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P2340';
dsply theCharVar;
callp localProc();
P555();
P2110();
P2051();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2340 in the procedure';
end-proc;