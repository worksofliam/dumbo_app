**free

ctl-opt dftactgrp(*no);

dcl-pi P948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P948';
dsply theCharVar;
callp localProc();
P757();
P60();
P429();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P948 in the procedure';
end-proc;