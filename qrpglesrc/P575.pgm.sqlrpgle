**free

ctl-opt dftactgrp(*no);

dcl-pi P575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P575';
dsply theCharVar;
P16();
P119();
P500();
return;