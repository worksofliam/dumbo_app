**free

ctl-opt dftactgrp(*no);

dcl-pi P2302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'

dcl-ds theTable extname('T785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T785 LIMIT 1;

theCharVar = 'Hello from P2302';
dsply theCharVar;
callp localProc();
P789();
P896();
P1445();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2302 in the procedure';
end-proc;