**free

ctl-opt dftactgrp(*no);

dcl-pi P1458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P1458';
dsply theCharVar;
callp localProc();
P839();
P687();
P132();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1458 in the procedure';
end-proc;