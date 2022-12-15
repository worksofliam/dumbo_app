**free

ctl-opt dftactgrp(*no);

dcl-pi P1120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P1120';
dsply theCharVar;
P708();
P273();
P677();
return;