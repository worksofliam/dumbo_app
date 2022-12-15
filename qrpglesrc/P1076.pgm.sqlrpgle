**free

ctl-opt dftactgrp(*no);

dcl-pi P1076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'

dcl-ds T1035 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1035 FROM T1035 LIMIT 1;

theCharVar = 'Hello from P1076';
dsply theCharVar;
callp localProc();
P5();
P1010();
P359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1076 in the procedure';
end-proc;