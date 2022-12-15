**free

ctl-opt dftactgrp(*no);

dcl-pi P418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T273 LIMIT 1;

theCharVar = 'Hello from P418';
dsply theCharVar;
P150();
P400();
P235();
return;