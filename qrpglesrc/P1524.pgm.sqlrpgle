**free

ctl-opt dftactgrp(*no);

dcl-pi P1524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P1524';
dsply theCharVar;
callp localProc();
P498();
P433();
P920();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1524 in the procedure';
end-proc;