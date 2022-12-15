**free

ctl-opt dftactgrp(*no);

dcl-pi P2179;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'

dcl-ds T808 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T808 FROM T808 LIMIT 1;

theCharVar = 'Hello from P2179';
dsply theCharVar;
callp localProc();
P889();
P841();
P370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2179 in the procedure';
end-proc;