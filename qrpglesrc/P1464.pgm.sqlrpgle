**free

ctl-opt dftactgrp(*no);

dcl-pi P1464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'

dcl-ds T1197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1197 FROM T1197 LIMIT 1;

theCharVar = 'Hello from P1464';
dsply theCharVar;
callp localProc();
P296();
P1147();
P665();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1464 in the procedure';
end-proc;