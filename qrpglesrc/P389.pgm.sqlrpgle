**free

ctl-opt dftactgrp(*no);

dcl-pi P389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds T125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T125 FROM T125 LIMIT 1;

theCharVar = 'Hello from P389';
dsply theCharVar;
callp localProc();
P131();
P30();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P389 in the procedure';
end-proc;