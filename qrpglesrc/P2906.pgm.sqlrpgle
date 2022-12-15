**free

ctl-opt dftactgrp(*no);

dcl-pi P2906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2848.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P2906';
dsply theCharVar;
callp localProc();
P2848();
P1222();
P538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2906 in the procedure';
end-proc;