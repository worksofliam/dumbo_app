**free

ctl-opt dftactgrp(*no);

dcl-pi P1417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P1417';
dsply theCharVar;
P945();
P1156();
P450();
return;