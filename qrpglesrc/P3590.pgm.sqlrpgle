**free

ctl-opt dftactgrp(*no);

dcl-pi P3590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3026.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'
/copy 'qrpgleref/P2512.rpgleinc'

dcl-ds T239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T239 FROM T239 LIMIT 1;

theCharVar = 'Hello from P3590';
dsply theCharVar;
callp localProc();
P3026();
P2318();
P2512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3590 in the procedure';
end-proc;