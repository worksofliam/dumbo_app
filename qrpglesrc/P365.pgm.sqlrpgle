**free

ctl-opt dftactgrp(*no);

dcl-pi P365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P365';
dsply theCharVar;
P258();
P109();
P126();
return;