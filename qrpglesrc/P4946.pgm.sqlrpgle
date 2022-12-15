**free

ctl-opt dftactgrp(*no);

dcl-pi P4946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3638.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P4231.rpgleinc'

dcl-ds theTable extname('T1246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1246 LIMIT 1;

theCharVar = 'Hello from P4946';
dsply theCharVar;
callp localProc();
P3638();
P1919();
P4231();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4946 in the procedure';
end-proc;