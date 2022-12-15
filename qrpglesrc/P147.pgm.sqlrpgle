**free

ctl-opt dftactgrp(*no);

dcl-pi P147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds T295 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T295 FROM T295 LIMIT 1;

theCharVar = 'Hello from P147';
dsply theCharVar;
callp localProc();
P139();
P61();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P147 in the procedure';
end-proc;