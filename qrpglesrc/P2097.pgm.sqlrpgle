**free

ctl-opt dftactgrp(*no);

dcl-pi P2097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P820.rpgleinc'
/copy 'qrpgleref/P1928.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds theTable extname('T742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T742 LIMIT 1;

theCharVar = 'Hello from P2097';
dsply theCharVar;
P820();
P1928();
P1833();
return;