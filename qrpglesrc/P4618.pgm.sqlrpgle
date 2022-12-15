**free

ctl-opt dftactgrp(*no);

dcl-pi P4618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3153.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P2516.rpgleinc'

dcl-ds theTable extname('T1256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1256 LIMIT 1;

theCharVar = 'Hello from P4618';
dsply theCharVar;
callp localProc();
P3153();
P564();
P2516();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4618 in the procedure';
end-proc;