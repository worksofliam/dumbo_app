**free

ctl-opt dftactgrp(*no);

dcl-pi P9;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T211 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T211 FROM T211 LIMIT 1;

theCharVar = 'Hello from P9';
dsply theCharVar;
callp localProc();
P1();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P9 in the procedure';
end-proc;