**free

ctl-opt dftactgrp(*no);

dcl-pi P947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds T181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T181 FROM T181 LIMIT 1;

theCharVar = 'Hello from P947';
dsply theCharVar;
callp localProc();
P578();
P280();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P947 in the procedure';
end-proc;