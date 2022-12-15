**free

ctl-opt dftactgrp(*no);

dcl-pi P5618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1328.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P3555.rpgleinc'

dcl-ds theTable extname('T1565') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1565 LIMIT 1;

theCharVar = 'Hello from P5618';
dsply theCharVar;
callp localProc();
P1328();
P615();
P3555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5618 in the procedure';
end-proc;