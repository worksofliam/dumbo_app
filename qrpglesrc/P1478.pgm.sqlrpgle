**free

ctl-opt dftactgrp(*no);

dcl-pi P1478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T470 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T470 FROM T470 LIMIT 1;

theCharVar = 'Hello from P1478';
dsply theCharVar;
callp localProc();
P159();
P993();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1478 in the procedure';
end-proc;