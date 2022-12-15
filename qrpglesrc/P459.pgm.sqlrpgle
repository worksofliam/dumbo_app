**free

ctl-opt dftactgrp(*no);

dcl-pi P459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P459';
dsply theCharVar;
callp localProc();
P241();
P147();
P203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P459 in the procedure';
end-proc;