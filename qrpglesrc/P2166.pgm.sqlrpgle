**free

ctl-opt dftactgrp(*no);

dcl-pi P2166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1993.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P1781.rpgleinc'

dcl-ds theTable extname('T1180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1180 LIMIT 1;

theCharVar = 'Hello from P2166';
dsply theCharVar;
callp localProc();
P1993();
P1708();
P1781();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2166 in the procedure';
end-proc;