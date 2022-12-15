**free

ctl-opt dftactgrp(*no);

dcl-pi P4238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1796.rpgleinc'
/copy 'qrpgleref/P1325.rpgleinc'
/copy 'qrpgleref/P2104.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P4238';
dsply theCharVar;
callp localProc();
P1796();
P1325();
P2104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4238 in the procedure';
end-proc;