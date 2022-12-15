**free

ctl-opt dftactgrp(*no);

dcl-pi P4286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P3405.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'

dcl-ds theTable extname('T1259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1259 LIMIT 1;

theCharVar = 'Hello from P4286';
dsply theCharVar;
callp localProc();
P1399();
P3405();
P1824();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4286 in the procedure';
end-proc;