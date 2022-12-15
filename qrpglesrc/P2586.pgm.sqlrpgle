**free

ctl-opt dftactgrp(*no);

dcl-pi P2586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1897.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P1198.rpgleinc'

dcl-ds T386 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T386 FROM T386 LIMIT 1;

theCharVar = 'Hello from P2586';
dsply theCharVar;
callp localProc();
P1897();
P108();
P1198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2586 in the procedure';
end-proc;