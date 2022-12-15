**free

ctl-opt dftactgrp(*no);

dcl-pi P1986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P1488.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P1986';
dsply theCharVar;
P659();
P1488();
P875();
return;