**free

ctl-opt dftactgrp(*no);

dcl-pi P4854;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P1973.rpgleinc'
/copy 'qrpgleref/P3436.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P4854';
dsply theCharVar;
callp localProc();
P1656();
P1973();
P3436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4854 in the procedure';
end-proc;