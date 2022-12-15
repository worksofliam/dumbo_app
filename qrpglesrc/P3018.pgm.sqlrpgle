**free

ctl-opt dftactgrp(*no);

dcl-pi P3018;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P2910.rpgleinc'

dcl-ds theTable extname('T1353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1353 LIMIT 1;

theCharVar = 'Hello from P3018';
dsply theCharVar;
callp localProc();
P770();
P18();
P2910();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3018 in the procedure';
end-proc;