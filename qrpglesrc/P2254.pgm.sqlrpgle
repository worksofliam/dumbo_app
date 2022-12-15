**free

ctl-opt dftactgrp(*no);

dcl-pi P2254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P2254';
dsply theCharVar;
P92();
P651();
P200();
return;