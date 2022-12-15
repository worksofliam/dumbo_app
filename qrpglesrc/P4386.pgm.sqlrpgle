**free

ctl-opt dftactgrp(*no);

dcl-pi P4386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1688.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'
/copy 'qrpgleref/P3833.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P4386';
dsply theCharVar;
P1688();
P1275();
P3833();
return;