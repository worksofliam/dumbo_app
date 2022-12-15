**free

ctl-opt dftactgrp(*no);

dcl-pi P1193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'

dcl-ds theTable extname('T1643') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1643 LIMIT 1;

theCharVar = 'Hello from P1193';
dsply theCharVar;
callp localProc();
P746();
P419();
P605();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1193 in the procedure';
end-proc;