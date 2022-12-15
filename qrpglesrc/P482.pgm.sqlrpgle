**free

ctl-opt dftactgrp(*no);

dcl-pi P482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P482';
dsply theCharVar;
P38();
P321();
P134();
return;