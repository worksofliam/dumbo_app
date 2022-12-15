**free

ctl-opt dftactgrp(*no);

dcl-pi P1075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'

dcl-ds T1195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1195 FROM T1195 LIMIT 1;

theCharVar = 'Hello from P1075';
dsply theCharVar;
callp localProc();
P876();
P131();
P312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1075 in the procedure';
end-proc;