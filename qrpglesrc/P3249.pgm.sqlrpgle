**free

ctl-opt dftactgrp(*no);

dcl-pi P3249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P1543.rpgleinc'
/copy 'qrpgleref/P2518.rpgleinc'

dcl-ds T469 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T469 FROM T469 LIMIT 1;

theCharVar = 'Hello from P3249';
dsply theCharVar;
callp localProc();
P291();
P1543();
P2518();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3249 in the procedure';
end-proc;