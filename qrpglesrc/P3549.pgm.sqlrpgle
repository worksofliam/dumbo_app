**free

ctl-opt dftactgrp(*no);

dcl-pi P3549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2153.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'
/copy 'qrpgleref/P3210.rpgleinc'

dcl-ds T999 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T999 FROM T999 LIMIT 1;

theCharVar = 'Hello from P3549';
dsply theCharVar;
callp localProc();
P2153();
P1004();
P3210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3549 in the procedure';
end-proc;