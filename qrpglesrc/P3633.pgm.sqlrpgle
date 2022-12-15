**free

ctl-opt dftactgrp(*no);

dcl-pi P3633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3243.rpgleinc'
/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P2781.rpgleinc'

dcl-ds theTable extname('T45') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T45 LIMIT 1;

theCharVar = 'Hello from P3633';
dsply theCharVar;
P3243();
P1811();
P2781();
return;