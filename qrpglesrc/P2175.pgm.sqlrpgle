**free

ctl-opt dftactgrp(*no);

dcl-pi P2175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P1712.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P2175';
dsply theCharVar;
callp localProc();
P150();
P1860();
P1712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2175 in the procedure';
end-proc;