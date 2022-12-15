**free

ctl-opt dftactgrp(*no);

dcl-pi P2561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'

dcl-ds T581 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T581 FROM T581 LIMIT 1;

theCharVar = 'Hello from P2561';
dsply theCharVar;
callp localProc();
P362();
P1783();
P1975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2561 in the procedure';
end-proc;