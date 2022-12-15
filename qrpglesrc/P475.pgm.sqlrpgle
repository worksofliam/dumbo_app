**free

ctl-opt dftactgrp(*no);

dcl-pi P475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds theTable extname('T152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T152 LIMIT 1;

theCharVar = 'Hello from P475';
dsply theCharVar;
P72();
P145();
P92();
return;