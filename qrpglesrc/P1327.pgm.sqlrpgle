**free

ctl-opt dftactgrp(*no);

dcl-pi P1327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T99 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T99 FROM T99 LIMIT 1;

theCharVar = 'Hello from P1327';
dsply theCharVar;
callp localProc();
P393();
P532();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1327 in the procedure';
end-proc;