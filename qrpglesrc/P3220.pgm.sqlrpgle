**free

ctl-opt dftactgrp(*no);

dcl-pi P3220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P3220';
dsply theCharVar;
callp localProc();
P683();
P692();
P897();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3220 in the procedure';
end-proc;