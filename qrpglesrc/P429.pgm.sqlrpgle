**free

ctl-opt dftactgrp(*no);

dcl-pi P429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'

dcl-ds T132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T132 FROM T132 LIMIT 1;

theCharVar = 'Hello from P429';
dsply theCharVar;
callp localProc();
P88();
P381();
P409();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P429 in the procedure';
end-proc;