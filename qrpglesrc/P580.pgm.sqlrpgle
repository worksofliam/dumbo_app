**free

ctl-opt dftactgrp(*no);

dcl-pi P580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P580';
dsply theCharVar;
P3();
P29();
P109();
return;