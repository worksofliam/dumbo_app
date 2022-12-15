**free

ctl-opt dftactgrp(*no);

dcl-pi P3357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1431.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P3357';
dsply theCharVar;
callp localProc();
P1431();
P1885();
P1086();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3357 in the procedure';
end-proc;