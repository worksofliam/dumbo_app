**free

ctl-opt dftactgrp(*no);

dcl-pi P512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T470 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T470 FROM T470 LIMIT 1;

theCharVar = 'Hello from P512';
dsply theCharVar;
callp localProc();
P407();
P214();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P512 in the procedure';
end-proc;