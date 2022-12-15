**free

ctl-opt dftactgrp(*no);

dcl-pi P2189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P888.rpgleinc'

dcl-ds theTable extname('T462') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T462 LIMIT 1;

theCharVar = 'Hello from P2189';
dsply theCharVar;
callp localProc();
P962();
P2044();
P888();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2189 in the procedure';
end-proc;