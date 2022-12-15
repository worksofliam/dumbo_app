**free

ctl-opt dftactgrp(*no);

dcl-pi P1031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P1031';
dsply theCharVar;
P257();
P750();
P758();
return;