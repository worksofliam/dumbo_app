**free

ctl-opt dftactgrp(*no);

dcl-pi P3743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P725.rpgleinc'

dcl-ds theTable extname('T716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T716 LIMIT 1;

theCharVar = 'Hello from P3743';
dsply theCharVar;
P1545();
P890();
P725();
return;