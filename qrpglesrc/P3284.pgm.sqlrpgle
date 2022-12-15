**free

ctl-opt dftactgrp(*no);

dcl-pi P3284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3169.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P2020.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P3284';
dsply theCharVar;
callp localProc();
P3169();
P1847();
P2020();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3284 in the procedure';
end-proc;