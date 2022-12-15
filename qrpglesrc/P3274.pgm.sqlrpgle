**free

ctl-opt dftactgrp(*no);

dcl-pi P3274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2827.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P1962.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P3274';
dsply theCharVar;
P2827();
P140();
P1962();
return;