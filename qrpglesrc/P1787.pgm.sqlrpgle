**free

ctl-opt dftactgrp(*no);

dcl-pi P1787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds T344 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T344 FROM T344 LIMIT 1;

theCharVar = 'Hello from P1787';
dsply theCharVar;
callp localProc();
P1264();
P157();
P1678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1787 in the procedure';
end-proc;