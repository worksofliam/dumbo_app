**free

ctl-opt dftactgrp(*no);

dcl-pi P202;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P202';
dsply theCharVar;
callp localProc();
P66();
P187();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P202 in the procedure';
end-proc;