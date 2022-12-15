**free

ctl-opt dftactgrp(*no);

dcl-pi P837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds T315 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T315 FROM T315 LIMIT 1;

theCharVar = 'Hello from P837';
dsply theCharVar;
callp localProc();
P496();
P717();
P119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P837 in the procedure';
end-proc;