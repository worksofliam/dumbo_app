**free

ctl-opt dftactgrp(*no);

dcl-pi P1062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P1062';
dsply theCharVar;
callp localProc();
P787();
P968();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1062 in the procedure';
end-proc;