**free

ctl-opt dftactgrp(*no);

dcl-pi P989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P989';
dsply theCharVar;
P879();
P24();
P224();
return;