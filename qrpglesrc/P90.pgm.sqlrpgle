**free

ctl-opt dftactgrp(*no);

dcl-pi P90;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P90';
dsply theCharVar;
callp localProc();
P29();
P3();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P90 in the procedure';
end-proc;