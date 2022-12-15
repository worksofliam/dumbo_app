**free

ctl-opt dftactgrp(*no);

dcl-pi P2124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T48 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T48 FROM T48 LIMIT 1;

theCharVar = 'Hello from P2124';
dsply theCharVar;
callp localProc();
P1130();
P49();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2124 in the procedure';
end-proc;