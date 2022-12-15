**free

ctl-opt dftactgrp(*no);

dcl-pi P35;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T314 LIMIT 1;

theCharVar = 'Hello from P35';
dsply theCharVar;
P8();
P11();
P29();
return;