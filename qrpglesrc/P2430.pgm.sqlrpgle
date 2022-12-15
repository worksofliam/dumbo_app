**free

ctl-opt dftactgrp(*no);

dcl-pi P2430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P1307.rpgleinc'

dcl-ds theTable extname('T608') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T608 LIMIT 1;

theCharVar = 'Hello from P2430';
dsply theCharVar;
P14();
P864();
P1307();
return;