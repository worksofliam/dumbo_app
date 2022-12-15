**free

ctl-opt dftactgrp(*no);

dcl-pi P400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T696 LIMIT 1;

theCharVar = 'Hello from P400';
dsply theCharVar;
P66();
P140();
P83();
return;