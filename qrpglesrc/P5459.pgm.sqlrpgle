**free

ctl-opt dftactgrp(*no);

dcl-pi P5459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P1583.rpgleinc'
/copy 'qrpgleref/P4900.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P5459';
dsply theCharVar;
callp localProc();
P824();
P1583();
P4900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5459 in the procedure';
end-proc;