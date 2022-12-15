**free

ctl-opt dftactgrp(*no);

dcl-pi P45;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T21 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T21 FROM T21 LIMIT 1;

theCharVar = 'Hello from P45';
dsply theCharVar;
callp localProc();
P19();
P2();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P45 in the procedure';
end-proc;