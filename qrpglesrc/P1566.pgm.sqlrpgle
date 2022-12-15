**free

ctl-opt dftactgrp(*no);

dcl-pi P1566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'
/copy 'qrpgleref/P1415.rpgleinc'

dcl-ds theTable extname('T484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T484 LIMIT 1;

theCharVar = 'Hello from P1566';
dsply theCharVar;
P510();
P1392();
P1415();
return;