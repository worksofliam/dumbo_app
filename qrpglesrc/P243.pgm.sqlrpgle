**free

ctl-opt dftactgrp(*no);

dcl-pi P243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds T1438 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1438 FROM T1438 LIMIT 1;

theCharVar = 'Hello from P243';
dsply theCharVar;
callp localProc();
P122();
P74();
P153();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P243 in the procedure';
end-proc;