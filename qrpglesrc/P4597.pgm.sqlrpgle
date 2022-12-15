**free

ctl-opt dftactgrp(*no);

dcl-pi P4597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3423.rpgleinc'
/copy 'qrpgleref/P3009.rpgleinc'
/copy 'qrpgleref/P4581.rpgleinc'

dcl-ds theTable extname('T1457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1457 LIMIT 1;

theCharVar = 'Hello from P4597';
dsply theCharVar;
P3423();
P3009();
P4581();
return;