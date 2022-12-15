**free

ctl-opt dftactgrp(*no);

dcl-pi P526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds T101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T101 FROM T101 LIMIT 1;

theCharVar = 'Hello from P526';
dsply theCharVar;
callp localProc();
P494();
P367();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P526 in the procedure';
end-proc;