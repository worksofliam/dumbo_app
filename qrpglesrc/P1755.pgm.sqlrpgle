**free

ctl-opt dftactgrp(*no);

dcl-pi P1755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds T932 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T932 FROM T932 LIMIT 1;

theCharVar = 'Hello from P1755';
dsply theCharVar;
callp localProc();
P484();
P883();
P1218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1755 in the procedure';
end-proc;