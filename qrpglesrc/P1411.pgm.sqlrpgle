**free

ctl-opt dftactgrp(*no);

dcl-pi P1411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds T411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T411 FROM T411 LIMIT 1;

theCharVar = 'Hello from P1411';
dsply theCharVar;
callp localProc();
P771();
P783();
P809();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1411 in the procedure';
end-proc;