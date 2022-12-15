**free

ctl-opt dftactgrp(*no);

dcl-pi P3988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2640.rpgleinc'
/copy 'qrpgleref/P1841.rpgleinc'
/copy 'qrpgleref/P1663.rpgleinc'

dcl-ds theTable extname('T1656') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1656 LIMIT 1;

theCharVar = 'Hello from P3988';
dsply theCharVar;
callp localProc();
P2640();
P1841();
P1663();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3988 in the procedure';
end-proc;