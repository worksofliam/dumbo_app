**free

ctl-opt dftactgrp(*no);

dcl-pi P570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P570';
dsply theCharVar;
P157();
P557();
P467();
return;