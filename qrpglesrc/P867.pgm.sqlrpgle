**free

ctl-opt dftactgrp(*no);

dcl-pi P867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T1181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1181 LIMIT 1;

theCharVar = 'Hello from P867';
dsply theCharVar;
P120();
P583();
P418();
return;