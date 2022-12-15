**free

ctl-opt dftactgrp(*no);

dcl-pi P712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds T45 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T45 FROM T45 LIMIT 1;

theCharVar = 'Hello from P712';
dsply theCharVar;
callp localProc();
P558();
P523();
P435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P712 in the procedure';
end-proc;