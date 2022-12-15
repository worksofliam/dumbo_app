**free

ctl-opt dftactgrp(*no);

dcl-pi P2406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P1390.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'

dcl-ds T415 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T415 FROM T415 LIMIT 1;

theCharVar = 'Hello from P2406';
dsply theCharVar;
callp localProc();
P514();
P1390();
P1135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2406 in the procedure';
end-proc;