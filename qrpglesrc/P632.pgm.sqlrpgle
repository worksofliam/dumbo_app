**free

ctl-opt dftactgrp(*no);

dcl-pi P632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds theTable extname('T233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T233 LIMIT 1;

theCharVar = 'Hello from P632';
dsply theCharVar;
callp localProc();
P490();
P271();
P203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P632 in the procedure';
end-proc;