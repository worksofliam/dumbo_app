**free

ctl-opt dftactgrp(*no);

dcl-pi P861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P861';
dsply theCharVar;
P17();
P855();
P678();
return;