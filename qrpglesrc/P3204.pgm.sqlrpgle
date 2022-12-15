**free

ctl-opt dftactgrp(*no);

dcl-pi P3204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2596.rpgleinc'
/copy 'qrpgleref/P2339.rpgleinc'
/copy 'qrpgleref/P3117.rpgleinc'

dcl-ds theTable extname('T1190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1190 LIMIT 1;

theCharVar = 'Hello from P3204';
dsply theCharVar;
callp localProc();
P2596();
P2339();
P3117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3204 in the procedure';
end-proc;