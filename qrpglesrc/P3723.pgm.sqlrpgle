**free

ctl-opt dftactgrp(*no);

dcl-pi P3723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2585.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds T1715 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1715 FROM T1715 LIMIT 1;

theCharVar = 'Hello from P3723';
dsply theCharVar;
callp localProc();
P2585();
P306();
P1066();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3723 in the procedure';
end-proc;