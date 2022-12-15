**free

ctl-opt dftactgrp(*no);

dcl-pi P3638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3191.rpgleinc'
/copy 'qrpgleref/P2161.rpgleinc'
/copy 'qrpgleref/P3548.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P3638';
dsply theCharVar;
callp localProc();
P3191();
P2161();
P3548();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3638 in the procedure';
end-proc;