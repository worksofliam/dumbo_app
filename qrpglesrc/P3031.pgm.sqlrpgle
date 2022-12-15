**free

ctl-opt dftactgrp(*no);

dcl-pi P3031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1525.rpgleinc'
/copy 'qrpgleref/P2852.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T995') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T995 LIMIT 1;

theCharVar = 'Hello from P3031';
dsply theCharVar;
callp localProc();
P1525();
P2852();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3031 in the procedure';
end-proc;