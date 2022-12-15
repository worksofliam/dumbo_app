**free

ctl-opt dftactgrp(*no);

dcl-pi P171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P171';
dsply theCharVar;
callp localProc();
P94();
P134();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P171 in the procedure';
end-proc;