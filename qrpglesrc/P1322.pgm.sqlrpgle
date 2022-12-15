**free

ctl-opt dftactgrp(*no);

dcl-pi P1322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P776.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds T1084 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1084 FROM T1084 LIMIT 1;

theCharVar = 'Hello from P1322';
dsply theCharVar;
callp localProc();
P776();
P505();
P1120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1322 in the procedure';
end-proc;