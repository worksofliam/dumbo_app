**free

ctl-opt dftactgrp(*no);

dcl-pi P623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P623';
dsply theCharVar;
P40();
P66();
P458();
return;