**free

ctl-opt dftactgrp(*no);

dcl-pi P1252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds theTable extname('T1326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1326 LIMIT 1;

theCharVar = 'Hello from P1252';
dsply theCharVar;
P922();
P435();
P195();
return;