**free

ctl-opt dftactgrp(*no);

dcl-pi P1024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'

dcl-ds T1624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1624 FROM T1624 LIMIT 1;

theCharVar = 'Hello from P1024';
dsply theCharVar;
callp localProc();
P126();
P661();
P774();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1024 in the procedure';
end-proc;