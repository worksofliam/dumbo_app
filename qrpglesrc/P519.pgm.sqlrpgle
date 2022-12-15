**free

ctl-opt dftactgrp(*no);

dcl-pi P519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'

dcl-ds T1295 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1295 FROM T1295 LIMIT 1;

theCharVar = 'Hello from P519';
dsply theCharVar;
callp localProc();
P515();
P426();
P312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P519 in the procedure';
end-proc;