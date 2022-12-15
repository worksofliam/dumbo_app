**free

ctl-opt dftactgrp(*no);

dcl-pi P585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P585';
dsply theCharVar;
P80();
P173();
P467();
return;