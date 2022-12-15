**free

ctl-opt dftactgrp(*no);

dcl-pi P4150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2227.rpgleinc'
/copy 'qrpgleref/P2042.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P4150';
dsply theCharVar;
callp localProc();
P2227();
P2042();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4150 in the procedure';
end-proc;