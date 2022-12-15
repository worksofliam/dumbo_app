**free

ctl-opt dftactgrp(*no);

dcl-pi P3342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P2963.rpgleinc'

dcl-ds theTable extname('T924') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T924 LIMIT 1;

theCharVar = 'Hello from P3342';
dsply theCharVar;
callp localProc();
P254();
P74();
P2963();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3342 in the procedure';
end-proc;