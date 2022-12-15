**free

ctl-opt dftactgrp(*no);

dcl-pi P953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P776.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T137') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T137 LIMIT 1;

theCharVar = 'Hello from P953';
dsply theCharVar;
callp localProc();
P776();
P703();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P953 in the procedure';
end-proc;