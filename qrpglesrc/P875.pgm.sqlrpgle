**free

ctl-opt dftactgrp(*no);

dcl-pi P875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T648 LIMIT 1;

theCharVar = 'Hello from P875';
dsply theCharVar;
P29();
P97();
P418();
return;