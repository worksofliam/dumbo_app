**free

ctl-opt dftactgrp(*no);

dcl-pi P1416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T308 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T308 FROM T308 LIMIT 1;

theCharVar = 'Hello from P1416';
dsply theCharVar;
callp localProc();
P1399();
P738();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1416 in the procedure';
end-proc;