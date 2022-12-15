**free

ctl-opt dftactgrp(*no);

dcl-pi P4320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2289.rpgleinc'
/copy 'qrpgleref/P3533.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T699 LIMIT 1;

theCharVar = 'Hello from P4320';
dsply theCharVar;
callp localProc();
P2289();
P3533();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4320 in the procedure';
end-proc;