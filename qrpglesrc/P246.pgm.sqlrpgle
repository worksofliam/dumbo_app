**free

ctl-opt dftactgrp(*no);

dcl-pi P246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds T94 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T94 FROM T94 LIMIT 1;

theCharVar = 'Hello from P246';
dsply theCharVar;
callp localProc();
P81();
P175();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P246 in the procedure';
end-proc;