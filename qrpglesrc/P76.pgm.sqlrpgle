**free

ctl-opt dftactgrp(*no);

dcl-pi P76;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T1') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1 LIMIT 1;

theCharVar = 'Hello from P76';
dsply theCharVar;
callp localProc();
P41();
P30();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P76 in the procedure';
end-proc;