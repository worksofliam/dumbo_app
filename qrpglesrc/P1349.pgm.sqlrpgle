**free

ctl-opt dftactgrp(*no);

dcl-pi P1349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P1090.rpgleinc'

dcl-ds T288 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T288 FROM T288 LIMIT 1;

theCharVar = 'Hello from P1349';
dsply theCharVar;
callp localProc();
P753();
P882();
P1090();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1349 in the procedure';
end-proc;