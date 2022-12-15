**free

ctl-opt dftactgrp(*no);

dcl-pi P441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'

dcl-ds T115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T115 FROM T115 LIMIT 1;

theCharVar = 'Hello from P441';
dsply theCharVar;
callp localProc();
P171();
P154();
P360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P441 in the procedure';
end-proc;