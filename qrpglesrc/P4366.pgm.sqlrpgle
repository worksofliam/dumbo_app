**free

ctl-opt dftactgrp(*no);

dcl-pi P4366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3827.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'

dcl-ds theTable extname('T542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T542 LIMIT 1;

theCharVar = 'Hello from P4366';
dsply theCharVar;
P3827();
P1231();
P2113();
return;