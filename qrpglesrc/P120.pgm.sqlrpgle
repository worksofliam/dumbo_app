**free

ctl-opt dftactgrp(*no);

dcl-pi P120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P120';
dsply theCharVar;
callp localProc();
P45();
P72();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P120 in the procedure';
end-proc;