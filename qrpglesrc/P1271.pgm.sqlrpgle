**free

ctl-opt dftactgrp(*no);

dcl-pi P1271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds T412 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T412 FROM T412 LIMIT 1;

theCharVar = 'Hello from P1271';
dsply theCharVar;
callp localProc();
P71();
P659();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1271 in the procedure';
end-proc;