**free

ctl-opt dftactgrp(*no);

dcl-pi P888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P888';
dsply theCharVar;
callp localProc();
P243();
P810();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P888 in the procedure';
end-proc;