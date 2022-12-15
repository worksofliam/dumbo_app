**free

ctl-opt dftactgrp(*no);

dcl-pi P211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P211';
dsply theCharVar;
P79();
P207();
P120();
return;