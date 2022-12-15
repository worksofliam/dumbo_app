**free

ctl-opt dftactgrp(*no);

dcl-pi P3031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2449.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'
/copy 'qrpgleref/P1640.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P3031';
dsply theCharVar;
P2449();
P950();
P1640();
return;