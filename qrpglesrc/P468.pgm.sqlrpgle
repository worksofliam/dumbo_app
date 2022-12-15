**free

ctl-opt dftactgrp(*no);

dcl-pi P468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P468';
dsply theCharVar;
P448();
P435();
P438();
return;