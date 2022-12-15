**free

ctl-opt dftactgrp(*no);

dcl-pi P367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P367';
dsply theCharVar;
callp localProc();
P314();
P206();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P367 in the procedure';
end-proc;