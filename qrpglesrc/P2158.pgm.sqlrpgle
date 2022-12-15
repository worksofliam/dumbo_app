**free

ctl-opt dftactgrp(*no);

dcl-pi P2158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'

dcl-ds theTable extname('T716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T716 LIMIT 1;

theCharVar = 'Hello from P2158';
dsply theCharVar;
P1238();
P1051();
P1706();
return;