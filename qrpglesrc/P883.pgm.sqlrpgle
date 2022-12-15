**free

ctl-opt dftactgrp(*no);

dcl-pi P883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds T324 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T324 FROM T324 LIMIT 1;

theCharVar = 'Hello from P883';
dsply theCharVar;
callp localProc();
P663();
P611();
P537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P883 in the procedure';
end-proc;