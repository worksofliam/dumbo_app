**free

ctl-opt dftactgrp(*no);

dcl-pi P257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T713') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T713 LIMIT 1;

theCharVar = 'Hello from P257';
dsply theCharVar;
P12();
P220();
P28();
return;