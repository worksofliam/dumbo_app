**free

ctl-opt dftactgrp(*no);

dcl-pi P2930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2141.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P2780.rpgleinc'

dcl-ds theTable extname('T1718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1718 LIMIT 1;

theCharVar = 'Hello from P2930';
dsply theCharVar;
callp localProc();
P2141();
P38();
P2780();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2930 in the procedure';
end-proc;