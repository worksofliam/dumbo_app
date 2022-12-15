**free

ctl-opt dftactgrp(*no);

dcl-pi P4737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P2495.rpgleinc'
/copy 'qrpgleref/P3335.rpgleinc'

dcl-ds theTable extname('T1438') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1438 LIMIT 1;

theCharVar = 'Hello from P4737';
dsply theCharVar;
callp localProc();
P690();
P2495();
P3335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4737 in the procedure';
end-proc;