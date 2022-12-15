**free

ctl-opt dftactgrp(*no);

dcl-pi P269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P269';
dsply theCharVar;
callp localProc();
P14();
P241();
P137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P269 in the procedure';
end-proc;