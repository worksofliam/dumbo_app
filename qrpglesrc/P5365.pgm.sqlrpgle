**free

ctl-opt dftactgrp(*no);

dcl-pi P5365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P2230.rpgleinc'
/copy 'qrpgleref/P4833.rpgleinc'

dcl-ds T1230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1230 FROM T1230 LIMIT 1;

theCharVar = 'Hello from P5365';
dsply theCharVar;
callp localProc();
P617();
P2230();
P4833();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5365 in the procedure';
end-proc;