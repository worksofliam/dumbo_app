**free

ctl-opt dftactgrp(*no);

dcl-pi P2655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P2496.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T427 LIMIT 1;

theCharVar = 'Hello from P2655';
dsply theCharVar;
callp localProc();
P935();
P2496();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2655 in the procedure';
end-proc;