**free

ctl-opt dftactgrp(*no);

dcl-pi P1841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'

dcl-ds T1873 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1873 FROM T1873 LIMIT 1;

theCharVar = 'Hello from P1841';
dsply theCharVar;
callp localProc();
P40();
P445();
P1108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1841 in the procedure';
end-proc;