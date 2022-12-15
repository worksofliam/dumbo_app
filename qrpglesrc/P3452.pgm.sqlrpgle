**free

ctl-opt dftactgrp(*no);

dcl-pi P3452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2609.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P3126.rpgleinc'

dcl-ds theTable extname('T627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T627 LIMIT 1;

theCharVar = 'Hello from P3452';
dsply theCharVar;
P2609();
P89();
P3126();
return;