**free

ctl-opt dftactgrp(*no);

dcl-pi P1181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P1181';
dsply theCharVar;
callp localProc();
P285();
P301();
P899();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1181 in the procedure';
end-proc;