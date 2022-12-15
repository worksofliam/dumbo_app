**free

ctl-opt dftactgrp(*no);

dcl-pi P476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P476';
dsply theCharVar;
callp localProc();
P444();
P270();
P159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P476 in the procedure';
end-proc;