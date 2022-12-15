**free

ctl-opt dftactgrp(*no);

dcl-pi P4720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P2249.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P4720';
dsply theCharVar;
callp localProc();
P399();
P2249();
P227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4720 in the procedure';
end-proc;