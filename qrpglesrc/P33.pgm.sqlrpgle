**free

ctl-opt dftactgrp(*no);

dcl-pi P33;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P33';
dsply theCharVar;
callp localProc();
P5();
P28();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P33 in the procedure';
end-proc;