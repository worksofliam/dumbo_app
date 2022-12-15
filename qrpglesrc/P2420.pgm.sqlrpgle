**free

ctl-opt dftactgrp(*no);

dcl-pi P2420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'

dcl-ds theTable extname('T1182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1182 LIMIT 1;

theCharVar = 'Hello from P2420';
dsply theCharVar;
P845();
P1270();
P879();
return;