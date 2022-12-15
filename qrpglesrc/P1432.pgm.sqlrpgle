**free

ctl-opt dftactgrp(*no);

dcl-pi P1432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds theTable extname('T1858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1858 LIMIT 1;

theCharVar = 'Hello from P1432';
dsply theCharVar;
P1115();
P353();
P504();
return;