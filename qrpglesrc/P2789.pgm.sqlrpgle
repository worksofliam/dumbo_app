**free

ctl-opt dftactgrp(*no);

dcl-pi P2789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1059.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P2551.rpgleinc'

dcl-ds T903 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T903 FROM T903 LIMIT 1;

theCharVar = 'Hello from P2789';
dsply theCharVar;
callp localProc();
P1059();
P698();
P2551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2789 in the procedure';
end-proc;