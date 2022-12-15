**free

ctl-opt dftactgrp(*no);

dcl-pi P5163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P3009.rpgleinc'

dcl-ds theTable extname('T1638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1638 LIMIT 1;

theCharVar = 'Hello from P5163';
dsply theCharVar;
callp localProc();
P2295();
P512();
P3009();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5163 in the procedure';
end-proc;