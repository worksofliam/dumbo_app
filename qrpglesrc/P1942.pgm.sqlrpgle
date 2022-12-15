**free

ctl-opt dftactgrp(*no);

dcl-pi P1942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1202.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'

dcl-ds theTable extname('T1222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1222 LIMIT 1;

theCharVar = 'Hello from P1942';
dsply theCharVar;
callp localProc();
P1202();
P1223();
P1870();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1942 in the procedure';
end-proc;