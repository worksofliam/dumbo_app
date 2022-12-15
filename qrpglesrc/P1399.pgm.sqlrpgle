**free

ctl-opt dftactgrp(*no);

dcl-pi P1399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'

dcl-ds T1325 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1325 FROM T1325 LIMIT 1;

theCharVar = 'Hello from P1399';
dsply theCharVar;
callp localProc();
P94();
P134();
P527();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1399 in the procedure';
end-proc;