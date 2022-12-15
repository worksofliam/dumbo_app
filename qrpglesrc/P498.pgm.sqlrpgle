**free

ctl-opt dftactgrp(*no);

dcl-pi P498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T50 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T50 FROM T50 LIMIT 1;

theCharVar = 'Hello from P498';
dsply theCharVar;
callp localProc();
P384();
P346();
P85();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P498 in the procedure';
end-proc;