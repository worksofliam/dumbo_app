**free

ctl-opt dftactgrp(*no);

dcl-pi P953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'

dcl-ds theTable extname('T165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T165 LIMIT 1;

theCharVar = 'Hello from P953';
dsply theCharVar;
callp localProc();
P59();
P703();
P496();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P953 in the procedure';
end-proc;