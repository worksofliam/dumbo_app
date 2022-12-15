**free

ctl-opt dftactgrp(*no);

dcl-pi P558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds T804 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T804 FROM T804 LIMIT 1;

theCharVar = 'Hello from P558';
dsply theCharVar;
callp localProc();
P417();
P69();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P558 in the procedure';
end-proc;