**free

ctl-opt dftactgrp(*no);

dcl-pi P927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T267 LIMIT 1;

theCharVar = 'Hello from P927';
dsply theCharVar;
P500();
P231();
P380();
return;