**free

ctl-opt dftactgrp(*no);

dcl-pi P694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds T57 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T57 FROM T57 LIMIT 1;

theCharVar = 'Hello from P694';
dsply theCharVar;
callp localProc();
P222();
P489();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P694 in the procedure';
end-proc;