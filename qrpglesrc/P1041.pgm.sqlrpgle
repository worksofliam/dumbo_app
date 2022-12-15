**free

ctl-opt dftactgrp(*no);

dcl-pi P1041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds T426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T426 FROM T426 LIMIT 1;

theCharVar = 'Hello from P1041';
dsply theCharVar;
callp localProc();
P546();
P227();
P532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1041 in the procedure';
end-proc;