**free

ctl-opt dftactgrp(*no);

dcl-pi P545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P185.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T1685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1685 LIMIT 1;

theCharVar = 'Hello from P545';
dsply theCharVar;
callp localProc();
P185();
P300();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P545 in the procedure';
end-proc;