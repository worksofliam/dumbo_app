**free

ctl-opt dftactgrp(*no);

dcl-pi P1922;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1308 LIMIT 1;

theCharVar = 'Hello from P1922';
dsply theCharVar;
callp localProc();
P557();
P144();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1922 in the procedure';
end-proc;