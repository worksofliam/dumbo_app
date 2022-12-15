**free

ctl-opt dftactgrp(*no);

dcl-pi P3058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P3027.rpgleinc'
/copy 'qrpgleref/P2365.rpgleinc'

dcl-ds theTable extname('T523') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T523 LIMIT 1;

theCharVar = 'Hello from P3058';
dsply theCharVar;
P35();
P3027();
P2365();
return;