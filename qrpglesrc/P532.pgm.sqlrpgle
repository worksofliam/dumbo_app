**free

ctl-opt dftactgrp(*no);

dcl-pi P532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds T119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T119 FROM T119 LIMIT 1;

theCharVar = 'Hello from P532';
dsply theCharVar;
callp localProc();
P171();
P190();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P532 in the procedure';
end-proc;