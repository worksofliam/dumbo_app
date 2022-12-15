**free

ctl-opt dftactgrp(*no);

dcl-pi P2719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P1966.rpgleinc'
/copy 'qrpgleref/P1535.rpgleinc'

dcl-ds T587 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T587 FROM T587 LIMIT 1;

theCharVar = 'Hello from P2719';
dsply theCharVar;
callp localProc();
P431();
P1966();
P1535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2719 in the procedure';
end-proc;