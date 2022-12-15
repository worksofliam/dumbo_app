**free

ctl-opt dftactgrp(*no);

dcl-pi P5517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1994.rpgleinc'
/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P1681.rpgleinc'

dcl-ds T1515 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1515 FROM T1515 LIMIT 1;

theCharVar = 'Hello from P5517';
dsply theCharVar;
callp localProc();
P1994();
P827();
P1681();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5517 in the procedure';
end-proc;