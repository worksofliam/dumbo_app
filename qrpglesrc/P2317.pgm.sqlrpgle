**free

ctl-opt dftactgrp(*no);

dcl-pi P2317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1564.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P1622.rpgleinc'

dcl-ds theTable extname('T1603') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1603 LIMIT 1;

theCharVar = 'Hello from P2317';
dsply theCharVar;
P1564();
P98();
P1622();
return;