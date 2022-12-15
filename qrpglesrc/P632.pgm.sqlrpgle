**free

ctl-opt dftactgrp(*no);

dcl-pi P632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'

dcl-ds theTable extname('T904') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T904 LIMIT 1;

theCharVar = 'Hello from P632';
dsply theCharVar;
callp localProc();
P26();
P143();
P403();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P632 in the procedure';
end-proc;