**free

ctl-opt dftactgrp(*no);

dcl-pi P5282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4819.rpgleinc'
/copy 'qrpgleref/P4489.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T1636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1636 LIMIT 1;

theCharVar = 'Hello from P5282';
dsply theCharVar;
callp localProc();
P4819();
P4489();
P53();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5282 in the procedure';
end-proc;