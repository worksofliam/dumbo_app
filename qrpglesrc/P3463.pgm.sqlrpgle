**free

ctl-opt dftactgrp(*no);

dcl-pi P3463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'

dcl-ds theTable extname('T410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T410 LIMIT 1;

theCharVar = 'Hello from P3463';
dsply theCharVar;
callp localProc();
P367();
P1665();
P1175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3463 in the procedure';
end-proc;