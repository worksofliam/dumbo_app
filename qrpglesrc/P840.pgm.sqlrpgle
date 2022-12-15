**free

ctl-opt dftactgrp(*no);

dcl-pi P840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'

dcl-ds theTable extname('T1249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1249 LIMIT 1;

theCharVar = 'Hello from P840';
dsply theCharVar;
callp localProc();
P812();
P690();
P683();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P840 in the procedure';
end-proc;