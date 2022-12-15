**free

ctl-opt dftactgrp(*no);

dcl-pi P734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T813') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T813 LIMIT 1;

theCharVar = 'Hello from P734';
dsply theCharVar;
callp localProc();
P394();
P238();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P734 in the procedure';
end-proc;