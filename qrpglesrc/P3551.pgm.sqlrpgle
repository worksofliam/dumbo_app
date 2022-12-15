**free

ctl-opt dftactgrp(*no);

dcl-pi P3551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P3403.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P3551';
dsply theCharVar;
callp localProc();
P721();
P2244();
P3403();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3551 in the procedure';
end-proc;