**free

ctl-opt dftactgrp(*no);

dcl-pi P412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P412';
dsply theCharVar;
callp localProc();
P232();
P180();
P253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P412 in the procedure';
end-proc;