**free

ctl-opt dftactgrp(*no);

dcl-pi P2642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2408.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T834 LIMIT 1;

theCharVar = 'Hello from P2642';
dsply theCharVar;
callp localProc();
P2408();
P161();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2642 in the procedure';
end-proc;