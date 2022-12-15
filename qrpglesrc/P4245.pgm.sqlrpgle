**free

ctl-opt dftactgrp(*no);

dcl-pi P4245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3843.rpgleinc'
/copy 'qrpgleref/P1464.rpgleinc'
/copy 'qrpgleref/P793.rpgleinc'

dcl-ds T1094 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1094 FROM T1094 LIMIT 1;

theCharVar = 'Hello from P4245';
dsply theCharVar;
callp localProc();
P3843();
P1464();
P793();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4245 in the procedure';
end-proc;