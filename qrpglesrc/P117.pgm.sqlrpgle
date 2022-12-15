**free

ctl-opt dftactgrp(*no);

dcl-pi P117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T454 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T454 FROM T454 LIMIT 1;

theCharVar = 'Hello from P117';
dsply theCharVar;
callp localProc();
P33();
P7();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P117 in the procedure';
end-proc;