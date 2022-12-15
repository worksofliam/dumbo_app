**free

ctl-opt dftactgrp(*no);

dcl-pi P2071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'

dcl-ds T1347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1347 FROM T1347 LIMIT 1;

theCharVar = 'Hello from P2071';
dsply theCharVar;
callp localProc();
P957();
P615();
P378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2071 in the procedure';
end-proc;