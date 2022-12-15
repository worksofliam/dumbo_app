**free

ctl-opt dftactgrp(*no);

dcl-pi P2232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1779.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'
/copy 'qrpgleref/P722.rpgleinc'

dcl-ds T457 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T457 FROM T457 LIMIT 1;

theCharVar = 'Hello from P2232';
dsply theCharVar;
callp localProc();
P1779();
P1473();
P722();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2232 in the procedure';
end-proc;