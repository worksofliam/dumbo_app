**free

ctl-opt dftactgrp(*no);

dcl-pi P585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T357 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T357 FROM T357 LIMIT 1;

theCharVar = 'Hello from P585';
dsply theCharVar;
callp localProc();
P397();
P230();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P585 in the procedure';
end-proc;