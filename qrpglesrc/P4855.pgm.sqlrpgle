**free

ctl-opt dftactgrp(*no);

dcl-pi P4855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4157.rpgleinc'
/copy 'qrpgleref/P2294.rpgleinc'
/copy 'qrpgleref/P2660.rpgleinc'

dcl-ds T913 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T913 FROM T913 LIMIT 1;

theCharVar = 'Hello from P4855';
dsply theCharVar;
callp localProc();
P4157();
P2294();
P2660();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4855 in the procedure';
end-proc;