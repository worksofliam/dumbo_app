**free

ctl-opt dftactgrp(*no);

dcl-pi P297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T314 LIMIT 1;

theCharVar = 'Hello from P297';
dsply theCharVar;
P271();
P146();
P243();
return;