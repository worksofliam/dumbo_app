**free

ctl-opt dftactgrp(*no);

dcl-pi P3332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P2506.rpgleinc'

dcl-ds T912 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T912 FROM T912 LIMIT 1;

theCharVar = 'Hello from P3332';
dsply theCharVar;
callp localProc();
P20();
P1610();
P2506();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3332 in the procedure';
end-proc;