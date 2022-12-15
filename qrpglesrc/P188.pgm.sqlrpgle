**free

ctl-opt dftactgrp(*no);

dcl-pi P188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P188';
dsply theCharVar;
callp localProc();
P107();
P186();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P188 in the procedure';
end-proc;