**free

ctl-opt dftactgrp(*no);

dcl-pi P82;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds T1140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1140 FROM T1140 LIMIT 1;

theCharVar = 'Hello from P82';
dsply theCharVar;
callp localProc();
P33();
P45();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P82 in the procedure';
end-proc;