**free

ctl-opt dftactgrp(*no);

dcl-pi P145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T683 LIMIT 1;

theCharVar = 'Hello from P145';
dsply theCharVar;
callp localProc();
P41();
P63();
P109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P145 in the procedure';
end-proc;