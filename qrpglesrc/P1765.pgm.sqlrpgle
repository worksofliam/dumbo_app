**free

ctl-opt dftactgrp(*no);

dcl-pi P1765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1474.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P1617.rpgleinc'

dcl-ds theTable extname('T1646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1646 LIMIT 1;

theCharVar = 'Hello from P1765';
dsply theCharVar;
callp localProc();
P1474();
P198();
P1617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1765 in the procedure';
end-proc;