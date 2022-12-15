**free

ctl-opt dftactgrp(*no);

dcl-pi P3717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2006.rpgleinc'
/copy 'qrpgleref/P2590.rpgleinc'
/copy 'qrpgleref/P1766.rpgleinc'

dcl-ds theTable extname('T1647') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1647 LIMIT 1;

theCharVar = 'Hello from P3717';
dsply theCharVar;
callp localProc();
P2006();
P2590();
P1766();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3717 in the procedure';
end-proc;