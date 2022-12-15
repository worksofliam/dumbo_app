**free

ctl-opt dftactgrp(*no);

dcl-pi P2749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'

dcl-ds T953 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T953 FROM T953 LIMIT 1;

theCharVar = 'Hello from P2749';
dsply theCharVar;
callp localProc();
P37();
P825();
P2474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2749 in the procedure';
end-proc;