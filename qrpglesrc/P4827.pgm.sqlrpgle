**free

ctl-opt dftactgrp(*no);

dcl-pi P4827;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P3999.rpgleinc'

dcl-ds theTable extname('T159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T159 LIMIT 1;

theCharVar = 'Hello from P4827';
dsply theCharVar;
callp localProc();
P137();
P474();
P3999();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4827 in the procedure';
end-proc;