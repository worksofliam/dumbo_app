**free

ctl-opt dftactgrp(*no);

dcl-pi P1888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds T1228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1228 FROM T1228 LIMIT 1;

theCharVar = 'Hello from P1888';
dsply theCharVar;
callp localProc();
P1691();
P1402();
P551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1888 in the procedure';
end-proc;