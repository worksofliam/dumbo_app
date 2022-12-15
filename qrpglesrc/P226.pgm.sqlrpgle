**free

ctl-opt dftactgrp(*no);

dcl-pi P226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds T1827 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1827 FROM T1827 LIMIT 1;

theCharVar = 'Hello from P226';
dsply theCharVar;
callp localProc();
P138();
P153();
P157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P226 in the procedure';
end-proc;