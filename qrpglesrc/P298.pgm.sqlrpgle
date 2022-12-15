**free

ctl-opt dftactgrp(*no);

dcl-pi P298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P298';
dsply theCharVar;
callp localProc();
P221();
P109();
P190();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P298 in the procedure';
end-proc;