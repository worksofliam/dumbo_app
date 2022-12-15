**free

ctl-opt dftactgrp(*no);

dcl-pi P509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds theTable extname('T949') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T949 LIMIT 1;

theCharVar = 'Hello from P509';
dsply theCharVar;
P80();
P368();
P305();
return;