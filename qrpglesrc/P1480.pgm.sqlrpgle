**free

ctl-opt dftactgrp(*no);

dcl-pi P1480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds theTable extname('T504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T504 LIMIT 1;

theCharVar = 'Hello from P1480';
dsply theCharVar;
P115();
P602();
P560();
return;