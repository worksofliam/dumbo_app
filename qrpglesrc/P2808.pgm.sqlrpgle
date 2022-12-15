**free

ctl-opt dftactgrp(*no);

dcl-pi P2808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2255.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T173') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T173 LIMIT 1;

theCharVar = 'Hello from P2808';
dsply theCharVar;
P2255();
P328();
P458();
return;