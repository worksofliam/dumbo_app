**free

ctl-opt dftactgrp(*no);

dcl-pi P873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T1489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1489 LIMIT 1;

theCharVar = 'Hello from P873';
dsply theCharVar;
callp localProc();
P257();
P769();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P873 in the procedure';
end-proc;