**free

ctl-opt dftactgrp(*no);

dcl-pi P1758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'

dcl-ds theTable extname('T1757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1757 LIMIT 1;

theCharVar = 'Hello from P1758';
dsply theCharVar;
callp localProc();
P111();
P989();
P669();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1758 in the procedure';
end-proc;