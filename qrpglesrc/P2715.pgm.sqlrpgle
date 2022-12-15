**free

ctl-opt dftactgrp(*no);

dcl-pi P2715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1490.rpgleinc'
/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'

dcl-ds T1133 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1133 FROM T1133 LIMIT 1;

theCharVar = 'Hello from P2715';
dsply theCharVar;
callp localProc();
P1490();
P1018();
P949();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2715 in the procedure';
end-proc;