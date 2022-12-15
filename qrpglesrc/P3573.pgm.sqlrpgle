**free

ctl-opt dftactgrp(*no);

dcl-pi P3573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1650.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P3127.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P3573';
dsply theCharVar;
P1650();
P658();
P3127();
return;