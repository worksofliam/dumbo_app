**free

ctl-opt dftactgrp(*no);

dcl-pi P111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P111';
dsply theCharVar;
P50();
P102();
P63();
return;