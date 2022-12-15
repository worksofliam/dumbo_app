**free

ctl-opt dftactgrp(*no);

dcl-pi P4730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1297.rpgleinc'
/copy 'qrpgleref/P1988.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P4730';
dsply theCharVar;
P1297();
P1988();
P640();
return;