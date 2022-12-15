**free

ctl-opt dftactgrp(*no);

dcl-pi P1002;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds T342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T342 FROM T342 LIMIT 1;

theCharVar = 'Hello from P1002';
dsply theCharVar;
callp localProc();
P740();
P251();
P728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1002 in the procedure';
end-proc;