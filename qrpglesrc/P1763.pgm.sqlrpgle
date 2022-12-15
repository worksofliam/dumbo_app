**free

ctl-opt dftactgrp(*no);

dcl-pi P1763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P1763';
dsply theCharVar;
P271();
P1135();
P142();
return;