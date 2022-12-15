**free

ctl-opt dftactgrp(*no);

dcl-pi P968;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'

dcl-ds T448 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T448 FROM T448 LIMIT 1;

theCharVar = 'Hello from P968';
dsply theCharVar;
callp localProc();
P755();
P374();
P842();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P968 in the procedure';
end-proc;