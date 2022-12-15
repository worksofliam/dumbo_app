**free

ctl-opt dftactgrp(*no);

dcl-pi P3583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P1842.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'

dcl-ds T345 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T345 FROM T345 LIMIT 1;

theCharVar = 'Hello from P3583';
dsply theCharVar;
callp localProc();
P2033();
P1842();
P208();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3583 in the procedure';
end-proc;