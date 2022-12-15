**free

ctl-opt dftactgrp(*no);

dcl-pi P529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T4') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T4 LIMIT 1;

theCharVar = 'Hello from P529';
dsply theCharVar;
callp localProc();
P478();
P236();
P489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P529 in the procedure';
end-proc;