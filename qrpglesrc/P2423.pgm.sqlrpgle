**free

ctl-opt dftactgrp(*no);

dcl-pi P2423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1936.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds theTable extname('T951') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T951 LIMIT 1;

theCharVar = 'Hello from P2423';
dsply theCharVar;
callp localProc();
P1936();
P215();
P407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2423 in the procedure';
end-proc;