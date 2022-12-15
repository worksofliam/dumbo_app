**free

ctl-opt dftactgrp(*no);

dcl-pi P5605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5062.rpgleinc'
/copy 'qrpgleref/P866.rpgleinc'
/copy 'qrpgleref/P2235.rpgleinc'

dcl-ds theTable extname('T1035') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1035 LIMIT 1;

theCharVar = 'Hello from P5605';
dsply theCharVar;
callp localProc();
P5062();
P866();
P2235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5605 in the procedure';
end-proc;