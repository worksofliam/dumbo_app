**free

ctl-opt dftactgrp(*no);

dcl-pi P1452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P1085.rpgleinc'

dcl-ds theTable extname('T910') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T910 LIMIT 1;

theCharVar = 'Hello from P1452';
dsply theCharVar;
P66();
P280();
P1085();
return;