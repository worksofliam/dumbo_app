**free

ctl-opt dftactgrp(*no);

dcl-pi P1452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P1452';
dsply theCharVar;
P708();
P358();
P431();
return;