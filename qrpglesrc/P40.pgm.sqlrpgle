**free

ctl-opt dftactgrp(*no);

dcl-pi P40;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T502 LIMIT 1;

theCharVar = 'Hello from P40';
dsply theCharVar;
callp localProc();
P25();
P18();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P40 in the procedure';
end-proc;