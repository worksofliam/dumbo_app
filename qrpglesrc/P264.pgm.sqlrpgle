**free

ctl-opt dftactgrp(*no);

dcl-pi P264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P264';
dsply theCharVar;
callp localProc();
P137();
P28();
P81();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P264 in the procedure';
end-proc;