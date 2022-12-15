**free

ctl-opt dftactgrp(*no);

dcl-pi P788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T277') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T277 LIMIT 1;

theCharVar = 'Hello from P788';
dsply theCharVar;
P321();
P172();
P80();
return;