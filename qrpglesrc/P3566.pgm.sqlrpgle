**free

ctl-opt dftactgrp(*no);

dcl-pi P3566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2288.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P3175.rpgleinc'

dcl-ds T1303 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1303 FROM T1303 LIMIT 1;

theCharVar = 'Hello from P3566';
dsply theCharVar;
callp localProc();
P2288();
P1142();
P3175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3566 in the procedure';
end-proc;