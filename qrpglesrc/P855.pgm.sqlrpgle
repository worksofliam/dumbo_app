**free

ctl-opt dftactgrp(*no);

dcl-pi P855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds T385 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T385 FROM T385 LIMIT 1;

theCharVar = 'Hello from P855';
dsply theCharVar;
callp localProc();
P359();
P755();
P697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P855 in the procedure';
end-proc;