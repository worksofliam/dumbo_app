**free

ctl-opt dftactgrp(*no);

dcl-pi P861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T366 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T366 FROM T366 LIMIT 1;

theCharVar = 'Hello from P861';
dsply theCharVar;
callp localProc();
P235();
P147();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P861 in the procedure';
end-proc;