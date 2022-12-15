**free

ctl-opt dftactgrp(*no);

dcl-pi P2708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P1080.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P2708';
dsply theCharVar;
P1709();
P293();
P1080();
return;