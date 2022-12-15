**free

ctl-opt dftactgrp(*no);

dcl-pi P1881;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P1805.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P1881';
dsply theCharVar;
P971();
P1805();
P659();
return;