**free

ctl-opt dftactgrp(*no);

dcl-pi P3815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2154.rpgleinc'
/copy 'qrpgleref/P2698.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds theTable extname('T1521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1521 LIMIT 1;

theCharVar = 'Hello from P3815';
dsply theCharVar;
callp localProc();
P2154();
P2698();
P424();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3815 in the procedure';
end-proc;