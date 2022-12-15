**free

ctl-opt dftactgrp(*no);

dcl-pi P3599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2383.rpgleinc'
/copy 'qrpgleref/P2698.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'

dcl-ds theTable extname('T444') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T444 LIMIT 1;

theCharVar = 'Hello from P3599';
dsply theCharVar;
callp localProc();
P2383();
P2698();
P491();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3599 in the procedure';
end-proc;