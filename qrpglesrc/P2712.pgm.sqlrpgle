**free

ctl-opt dftactgrp(*no);

dcl-pi P2712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P909.rpgleinc'

dcl-ds T219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T219 FROM T219 LIMIT 1;

theCharVar = 'Hello from P2712';
dsply theCharVar;
callp localProc();
P86();
P507();
P909();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2712 in the procedure';
end-proc;