**free

ctl-opt dftactgrp(*no);

dcl-pi P3985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3456.rpgleinc'
/copy 'qrpgleref/P2114.rpgleinc'
/copy 'qrpgleref/P3670.rpgleinc'

dcl-ds theTable extname('T1331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1331 LIMIT 1;

theCharVar = 'Hello from P3985';
dsply theCharVar;
P3456();
P2114();
P3670();
return;