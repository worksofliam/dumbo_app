**free

ctl-opt dftactgrp(*no);

dcl-pi P1206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T1408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1408 LIMIT 1;

theCharVar = 'Hello from P1206';
dsply theCharVar;
callp localProc();
P484();
P593();
P1024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1206 in the procedure';
end-proc;