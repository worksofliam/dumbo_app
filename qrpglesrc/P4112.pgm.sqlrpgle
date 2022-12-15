**free

ctl-opt dftactgrp(*no);

dcl-pi P4112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3787.rpgleinc'
/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'

dcl-ds theTable extname('T814') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T814 LIMIT 1;

theCharVar = 'Hello from P4112';
dsply theCharVar;
callp localProc();
P3787();
P1860();
P968();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4112 in the procedure';
end-proc;