**free

ctl-opt dftactgrp(*no);

dcl-pi P4397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2357.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'

dcl-ds T758 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T758 FROM T758 LIMIT 1;

theCharVar = 'Hello from P4397';
dsply theCharVar;
callp localProc();
P2357();
P1142();
P2377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4397 in the procedure';
end-proc;