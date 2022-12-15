**free

ctl-opt dftactgrp(*no);

dcl-pi P1331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P1195.rpgleinc'
/copy 'qrpgleref/P1321.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P1331';
dsply theCharVar;
P834();
P1195();
P1321();
return;