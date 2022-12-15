**free

ctl-opt dftactgrp(*no);

dcl-pi P1578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T1094') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1094 LIMIT 1;

theCharVar = 'Hello from P1578';
dsply theCharVar;
callp localProc();
P66();
P1481();
P380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1578 in the procedure';
end-proc;