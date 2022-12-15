**free

ctl-opt dftactgrp(*no);

dcl-pi P702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P702';
dsply theCharVar;
callp localProc();
P139();
P637();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P702 in the procedure';
end-proc;