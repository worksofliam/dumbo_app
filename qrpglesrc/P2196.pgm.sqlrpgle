**free

ctl-opt dftactgrp(*no);

dcl-pi P2196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1126.rpgleinc'
/copy 'qrpgleref/P1929.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'

dcl-ds T1071 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1071 FROM T1071 LIMIT 1;

theCharVar = 'Hello from P2196';
dsply theCharVar;
callp localProc();
P1126();
P1929();
P911();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2196 in the procedure';
end-proc;