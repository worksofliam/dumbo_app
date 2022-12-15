**free

ctl-opt dftactgrp(*no);

dcl-pi P3295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P2252.rpgleinc'

dcl-ds theTable extname('T846') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T846 LIMIT 1;

theCharVar = 'Hello from P3295';
dsply theCharVar;
P252();
P845();
P2252();
return;