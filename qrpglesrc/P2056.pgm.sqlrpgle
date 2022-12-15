**free

ctl-opt dftactgrp(*no);

dcl-pi P2056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P1917.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T832 LIMIT 1;

theCharVar = 'Hello from P2056';
dsply theCharVar;
P891();
P1917();
P545();
return;