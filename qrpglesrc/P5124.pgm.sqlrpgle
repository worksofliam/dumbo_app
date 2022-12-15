**free

ctl-opt dftactgrp(*no);

dcl-pi P5124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P3459.rpgleinc'
/copy 'qrpgleref/P2452.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P5124';
dsply theCharVar;
callp localProc();
P734();
P3459();
P2452();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5124 in the procedure';
end-proc;