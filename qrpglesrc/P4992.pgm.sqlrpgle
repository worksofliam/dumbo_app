**free

ctl-opt dftactgrp(*no);

dcl-pi P4992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4649.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P4992';
dsply theCharVar;
callp localProc();
P4649();
P1471();
P962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4992 in the procedure';
end-proc;