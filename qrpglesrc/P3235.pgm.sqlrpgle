**free

ctl-opt dftactgrp(*no);

dcl-pi P3235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2005.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P3235';
dsply theCharVar;
P2005();
P2229();
P109();
return;