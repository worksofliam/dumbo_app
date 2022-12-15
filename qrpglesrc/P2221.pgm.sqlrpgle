**free

ctl-opt dftactgrp(*no);

dcl-pi P2221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds theTable extname('T1722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1722 LIMIT 1;

theCharVar = 'Hello from P2221';
dsply theCharVar;
P34();
P1507();
P772();
return;