**free

ctl-opt dftactgrp(*no);

dcl-pi P3695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1690.rpgleinc'
/copy 'qrpgleref/P3549.rpgleinc'
/copy 'qrpgleref/P1993.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P3695';
dsply theCharVar;
callp localProc();
P1690();
P3549();
P1993();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3695 in the procedure';
end-proc;