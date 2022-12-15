**free

ctl-opt dftactgrp(*no);

dcl-pi P3955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1431.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P2273.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P3955';
dsply theCharVar;
P1431();
P1073();
P2273();
return;