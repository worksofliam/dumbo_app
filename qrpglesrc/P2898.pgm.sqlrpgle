**free

ctl-opt dftactgrp(*no);

dcl-pi P2898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P1785.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P2898';
dsply theCharVar;
P1215();
P812();
P1785();
return;