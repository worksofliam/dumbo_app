**free

ctl-opt dftactgrp(*no);

dcl-pi P1489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T1372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1372 LIMIT 1;

theCharVar = 'Hello from P1489';
dsply theCharVar;
P766();
P557();
P410();
return;