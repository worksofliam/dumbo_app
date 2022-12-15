**free

ctl-opt dftactgrp(*no);

dcl-pi P724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P623.rpgleinc'

dcl-ds T1419 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1419 FROM T1419 LIMIT 1;

theCharVar = 'Hello from P724';
dsply theCharVar;
callp localProc();
P562();
P62();
P623();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P724 in the procedure';
end-proc;