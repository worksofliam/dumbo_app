**free

ctl-opt dftactgrp(*no);

dcl-pi P2068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'
/copy 'qrpgleref/P1031.rpgleinc'

dcl-ds theTable extname('T54') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T54 LIMIT 1;

theCharVar = 'Hello from P2068';
dsply theCharVar;
callp localProc();
P1505();
P1968();
P1031();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2068 in the procedure';
end-proc;