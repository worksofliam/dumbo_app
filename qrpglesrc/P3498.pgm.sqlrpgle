**free

ctl-opt dftactgrp(*no);

dcl-pi P3498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2807.rpgleinc'
/copy 'qrpgleref/P2922.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'

dcl-ds theTable extname('T313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T313 LIMIT 1;

theCharVar = 'Hello from P3498';
dsply theCharVar;
P2807();
P2922();
P2456();
return;