**free

ctl-opt dftactgrp(*no);

dcl-pi P3627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2897.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P2236.rpgleinc'

dcl-ds theTable extname('T1122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1122 LIMIT 1;

theCharVar = 'Hello from P3627';
dsply theCharVar;
P2897();
P7();
P2236();
return;