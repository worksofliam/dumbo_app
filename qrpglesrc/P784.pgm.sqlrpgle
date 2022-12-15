**free

ctl-opt dftactgrp(*no);

dcl-pi P784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'

dcl-ds theTable extname('T832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T832 LIMIT 1;

theCharVar = 'Hello from P784';
dsply theCharVar;
callp localProc();
P25();
P602();
P687();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P784 in the procedure';
end-proc;