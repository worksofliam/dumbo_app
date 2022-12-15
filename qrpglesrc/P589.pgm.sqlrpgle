**free

ctl-opt dftactgrp(*no);

dcl-pi P589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P589';
dsply theCharVar;
P35();
P365();
P60();
return;