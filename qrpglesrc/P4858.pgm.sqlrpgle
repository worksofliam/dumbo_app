**free

ctl-opt dftactgrp(*no);

dcl-pi P4858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3115.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P2853.rpgleinc'

dcl-ds theTable extname('T1360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1360 LIMIT 1;

theCharVar = 'Hello from P4858';
dsply theCharVar;
callp localProc();
P3115();
P500();
P2853();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4858 in the procedure';
end-proc;