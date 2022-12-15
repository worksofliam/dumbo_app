**free

ctl-opt dftactgrp(*no);

dcl-pi P2221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1489.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'

dcl-ds T625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T625 FROM T625 LIMIT 1;

theCharVar = 'Hello from P2221';
dsply theCharVar;
callp localProc();
P1489();
P1441();
P913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2221 in the procedure';
end-proc;