**free

ctl-opt dftactgrp(*no);

dcl-pi P5174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P2623.rpgleinc'

dcl-ds T1695 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1695 FROM T1695 LIMIT 1;

theCharVar = 'Hello from P5174';
dsply theCharVar;
callp localProc();
P225();
P230();
P2623();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5174 in the procedure';
end-proc;