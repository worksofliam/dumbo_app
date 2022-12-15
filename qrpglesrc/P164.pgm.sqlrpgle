**free

ctl-opt dftactgrp(*no);

dcl-pi P164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds T736 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T736 FROM T736 LIMIT 1;

theCharVar = 'Hello from P164';
dsply theCharVar;
callp localProc();
P64();
P32();
P71();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P164 in the procedure';
end-proc;