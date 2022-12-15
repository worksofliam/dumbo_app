**free

ctl-opt dftactgrp(*no);

dcl-pi P428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T413 LIMIT 1;

theCharVar = 'Hello from P428';
dsply theCharVar;
P310();
P415();
P192();
return;