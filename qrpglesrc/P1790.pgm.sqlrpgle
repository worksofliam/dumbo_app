**free

ctl-opt dftactgrp(*no);

dcl-pi P1790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'

dcl-ds theTable extname('T1054') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1054 LIMIT 1;

theCharVar = 'Hello from P1790';
dsply theCharVar;
callp localProc();
P465();
P856();
P1404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1790 in the procedure';
end-proc;