**free

ctl-opt dftactgrp(*no);

dcl-pi P2211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P947.rpgleinc'
/copy 'qrpgleref/P1650.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T1434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1434 LIMIT 1;

theCharVar = 'Hello from P2211';
dsply theCharVar;
P947();
P1650();
P21();
return;