**free

ctl-opt dftactgrp(*no);

dcl-pi P1476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'

dcl-ds T118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T118 FROM T118 LIMIT 1;

theCharVar = 'Hello from P1476';
dsply theCharVar;
callp localProc();
P631();
P920();
P1069();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1476 in the procedure';
end-proc;