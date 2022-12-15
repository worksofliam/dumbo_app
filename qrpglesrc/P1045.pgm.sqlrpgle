**free

ctl-opt dftactgrp(*no);

dcl-pi P1045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P1045';
dsply theCharVar;
P847();
P226();
P167();
return;