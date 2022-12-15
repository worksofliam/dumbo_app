**free

ctl-opt dftactgrp(*no);

dcl-pi P374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T337 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T337 FROM T337 LIMIT 1;

theCharVar = 'Hello from P374';
dsply theCharVar;
callp localProc();
P194();
P161();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P374 in the procedure';
end-proc;