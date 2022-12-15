**free

ctl-opt dftactgrp(*no);

dcl-pi P4771;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2180.rpgleinc'
/copy 'qrpgleref/P1446.rpgleinc'
/copy 'qrpgleref/P2917.rpgleinc'

dcl-ds T1183 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1183 FROM T1183 LIMIT 1;

theCharVar = 'Hello from P4771';
dsply theCharVar;
callp localProc();
P2180();
P1446();
P2917();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4771 in the procedure';
end-proc;