**free

ctl-opt dftactgrp(*no);

dcl-pi P3472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2366.rpgleinc'
/copy 'qrpgleref/P2065.rpgleinc'
/copy 'qrpgleref/P1942.rpgleinc'

dcl-ds T474 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T474 FROM T474 LIMIT 1;

theCharVar = 'Hello from P3472';
dsply theCharVar;
callp localProc();
P2366();
P2065();
P1942();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3472 in the procedure';
end-proc;