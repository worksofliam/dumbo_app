**free

ctl-opt dftactgrp(*no);

dcl-pi P1541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1415.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'

dcl-ds theTable extname('T844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T844 LIMIT 1;

theCharVar = 'Hello from P1541';
dsply theCharVar;
callp localProc();
P1415();
P743();
P632();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1541 in the procedure';
end-proc;